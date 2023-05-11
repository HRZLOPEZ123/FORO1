import React, { useState } from 'react';
import { View, Text, TextInput, Button } from 'react-native';

const AlumnoForm = () => {
  const [nombre, setNombre] = useState('');
  const [edad, setEdad] = useState('');
  const [carrera, setCarrera] = useState('');
  const [materias, setMaterias] = useState('');
  const [promedio, setPromedio] = useState('');
  const [Notas, setNotas] = useState('');

  const handleSubmit = () => {
    // Enviar los datos del alumno a la base de datos o hacer algo con ellos
    console.log(nombre, edad, carrera, materias, promedio);
  };

  return (
    <View>
      <Text>Nombre:</Text>
      <TextInput value={nombre} onChangeText={setNombre} />

      <Text>Edad:</Text>
      <TextInput value={edad} onChangeText={setEdad} keyboardType="numeric" />

      <Text>Carrera:</Text>
      <TextInput value={carrera} onChangeText={setCarrera} />

      <Text>Materias:</Text>
      <TextInput value={materias} onChangeText={setMaterias} />

      <Text>Promedio:</Text>
      <TextInput value={promedio} onChangeText={setPromedio} keyboardType="numeric" />

      <Text>Notas:</Text>
      <TextInput value={Notas} onChangeText={setNotas} keyboardType="numeric" />


      <Button title="Guardar" onPress={handleSubmit} />
    </View>
  );
};

/*export default AlumnoForm;

import React from 'react';
import { View } from 'react-native';
import AlumnoForm from './AlumnoForm';

const AlumnoScreen = () => {
  return (
    <View>
      <AlumnoForm />
    </View>
  );
};

export default AlumnoScreen;*/
