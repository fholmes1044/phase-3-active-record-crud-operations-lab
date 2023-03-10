require "pry"
class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title:title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        self.last
    end
    
    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find_by id: id
    end

    def self.find_movie_with_attributes(value)
       self.find_by(value)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(update)
        self.update(update)
    end

    def self.update_all_titles(value)
        self.update(title:value)
    end

    def self.delete_by_id(id)
        self.destroy_by(id:id)
    end
    
    def self.delete_all_movies
        self.destroy_all
    end
end