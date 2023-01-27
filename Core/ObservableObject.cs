using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace gmPluck.Core
{
    class ObservableObject : INotifyPropertyChanged
    {

        // this is the event that runs when a property changes
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }

    }
}
