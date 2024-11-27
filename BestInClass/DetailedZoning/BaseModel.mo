within BestInClass.DetailedZoning;
model BaseModel
  extends Modelica.Icons.Example;
  extends BaseClasses.WholeBuilding;

  Modelica.Blocks.Sources.Constant TSupSetCoo(y(
      final quantity="ThermodynamicTemperature",
      final unit="K",
      displayUnit="degC",
      min=0), k=par.TSupSetCoo)
                             "Supply air temperature setpoint for cooling"
    annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
equation
  connect(TSupSetCoo.y, AHU.TSupSetCoo) annotation (Line(points={{-59,-40},{12,-40},
          {12,-7},{19,-7}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false),
                    graphics={
        Line(points={{-142,48}}, color={28,108,200})}),
    experiment(
      StartTime=16329600,
      StopTime=17539200,
      Interval=599.999616,
      __Dymola_Algorithm="Cvode"),
    __Dymola_Commands(file=
          "modelica://BestInClass/Resources/Script/DetailedZoning/SAC_Summer.mos"
        "SAC_Summer", file=
          "modelica://BestInClass/Resources/Script/DetailedZoning/SAC_Winter.mos"
        "SAC_Winter"));
end BaseModel;
