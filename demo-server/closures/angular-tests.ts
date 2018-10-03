import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UserLoginService } from './UserLoginService.component';

describe( 'UserLoginService', () => {
  let component: UserLoginService;
  let fixture: ComponentFixture<UserLoginService>;

  it( 'should have a getLogin method', () => {
      expect( UserLoginService ).toHaveKey( "getLogin", "did NOT find the getLogin method" );
  });

  it( 'should save user activity to a log file', () => {
      userLogin.login( "username", "password" );

        // now check to make sure the "activitylog.txt" got updated
        fileContents = fileRead( "activitylog.txt" ); // what if that file doesn't exist?
                                // this test will fail with an error!
  });

  it( 'should have a resetPassword method', () => {
      expect( UserLoginService ).toHaveKey( "resetPassword", "did NOT find the resetPassword method" );
  });

});

