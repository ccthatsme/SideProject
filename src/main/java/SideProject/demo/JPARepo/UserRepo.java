package SideProject.demo.JPARepo;

import org.springframework.data.jpa.repository.JpaRepository;

import SideProject.demo.entity.User;

public interface UserRepo extends JpaRepository<User, Integer> {

}
