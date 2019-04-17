import java.util.ArrayList;
import java.util.List;

public class CatHerder implements Cats {

    static List<Cat> cats;

    public CatHerder() {
        if (cats == null) {
            cats = new ArrayList<>();
        }
        init();
    }


    public Cat getCat(int id) {
        return cats.get(id);
    }

    public List<Cat> getAllCats() {
        return cats;
    }

    public void addCat(Cat cat) {
        cats.add(cat);
    }

    public void runawayCat(int id) {
        cats.remove(this.getCat(id));
    }

    public void updateCat(Cat cat){
        cats.set(cat.getId(), cat);
    }

    public void deleteCat(int id) {
        cats.remove(this.getCat(id));
    }

    @Override
    public void deleteCat(Cat cat) {
        deleteCat(cat);
    }

    private void init(){
        this.addCat(new Cat("Mace",3, "#"));
        this.addCat(new Cat("Helen", 5, "#"));
    }
}

