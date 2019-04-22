public class Album {

    private long id;
    private String artist;
    private String name;
    private String year;
    private String releaseYear;
    private String genre;
    private Double sales;

    public Album(long id, String artist, String name, String year, String releaseYear, String genre, Double sales) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.year = year;
        this.releaseYear = releaseYear;
        this.genre = genre;
        this.sales = sales;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(String releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Double getSales() {
        return sales;
    }

    public void setSales(Double sales) {
        this.sales = sales;
    }
}
