public class BeanTester {
    public static void main(String[] args) {
        Album album = new Album("Carley Rae Jepsen", "EMOTION", 2013, 2.5, "Pop");

        System.out.println(album.getArtist());
        System.out.println(album.getName());
        System.out.println(album.getGenre());
        System.out.println(album.getSales());
        System.out.println(album.getReleaseDate());
    }
}