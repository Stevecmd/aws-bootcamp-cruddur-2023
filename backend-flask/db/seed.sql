-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Andrew Brown','andrew@rocketmail.com' , 'andrewbrown' ,'7659c102-7ad4-44bd-bdc3-208f934d1f41'),
  ('Andrew Bayko','bayko@rocketmail.com' , 'bayko' ,'f73f4b05-a59e-468b-8a29-a1c39e7a2222'),
  ('Londo Mollari','lmollari@galaxynet.com' , 'londo' ,'ca5fce02-ce3d-11ed-afa1-0242ac120002');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )