using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Ежедневник_v._1._1
{

    public partial class MainWindow : Window
    {
        private ObservableCollection<Note> notes;
        private Note selectedNote;
        private DateTime selectedDate;
        private string dataFilePath = "заметки.json";

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;

            selectedDate = DateTime.Today;
            datePicker.SelectedDate = selectedDate;

            LoadNotes();
        }

        private void LoadNotes()
        {
            if (File.Exists(dataFilePath))
            {
                notes = SerializationHelper.Deserialize<ObservableCollection<Note>>(dataFilePath);
            }
            else
            {
                notes = new ObservableCollection<Note>();
            }

            Refresh();
        }

        private void Save()
        {
            SerializationHelper.Serialize(notes, dataFilePath);
        }

        private void Refresh()
        {
            noteListBox.ItemsSource = notes.Where(note => note.Date.Date == selectedDate.Date);
            selectedNote = null;
        }

        private void Clear()
        {
            titleTextBox.Text = "";
            descriptionTextBox.Text = "";
        }

        private void Add(object sender, RoutedEventArgs e)
        {
            Note newNote = new Note
            {
                Title = titleTextBox.Text,
                Description = descriptionTextBox.Text,
                Date = selectedDate
            };

            notes.Add(newNote);
            Save();
            Clear();
            Refresh();
        }

        private void Update(object sender, RoutedEventArgs e)
        {
            if (selectedNote != null)
            {
                selectedNote.Title = titleTextBox.Text;
                selectedNote.Description = descriptionTextBox.Text;
                Save();
                Clear();
                Refresh();
            }
        }

        private void Delete(object sender, RoutedEventArgs e)
        {
            if (selectedNote != null)
            {
                notes.Remove(selectedNote);
                Save();
                Clear();
                Refresh();
            }
        }

       

        private void NoteListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            selectedNote = noteListBox.SelectedItem as Note;

            if (selectedNote != null)
            {
                titleTextBox.Text = selectedNote.Title;
                descriptionTextBox.Text = selectedNote.Description;
            }
        }

        private void datePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            selectedDate = datePicker.SelectedDate ?? DateTime.Today;
            Refresh();
            Clear();
        }
    }

}

