using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ASPFinal_MusicApp_cwolfgram1.models
{
    public class PhysicalMusic
    {

        [Key]
        public int musicID { get; set; }
        public string musicTitle { get; set; }
        public string musicArtist { get; set; }
        public string musicFormat { get; set; }
        public string musicGenre { get; set; }
        public int musicYear { get; set; }
        public bool musicOwned { get; set; }
        public bool musicWant { get; set; }

        public PhysicalMusic(int id, string title, string artist, string format, string genre, int year, bool owned, bool want)
        {
            this.musicID = id;
            this.musicTitle = title;
            this.musicArtist = artist;
            this.musicFormat = format;
            this.musicGenre = genre;
            this.musicYear = year;
            this.musicOwned = owned;
            this.musicWant = want;
        }

        public PhysicalMusic()
        {
        }
    }
}