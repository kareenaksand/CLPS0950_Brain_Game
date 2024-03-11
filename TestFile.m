%TestFile
classdef TestFile < matlab.apps.AppBase

    %Code for the home page

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        CreatedbyKareenaSandhuSalinaMariMentorandMachaelaCruzLabel  matlab.ui.control.Label
        ClickthecategoriesbuttontobeginLabel  matlab.ui.control.Label
        CategoriesButton        matlab.ui.control.Button
        BrainGameHomePageLabel  matlab.ui.control.Label
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create BrainGameHomePageLabel
            app.BrainGameHomePageLabel = uilabel(app.UIFigure);
            app.BrainGameHomePageLabel.FontName = 'Apple Braille';
            app.BrainGameHomePageLabel.FontSize = 48;
            app.BrainGameHomePageLabel.Position = [31 388 587 72];
            app.BrainGameHomePageLabel.Text = 'Brain Game Home Page!';

            % Create CategoriesButton
            app.CategoriesButton = uibutton(app.UIFigure, 'push');
            app.CategoriesButton.FontSize = 36;
            app.CategoriesButton.Position = [229 61 191 55];
            app.CategoriesButton.Text = 'Categories';

            % Create ClickthecategoriesbuttontobeginLabel
            app.ClickthecategoriesbuttontobeginLabel = uilabel(app.UIFigure);
            app.ClickthecategoriesbuttontobeginLabel.FontSize = 18;
            app.ClickthecategoriesbuttontobeginLabel.Position = [168 267 306 24];
            app.ClickthecategoriesbuttontobeginLabel.Text = 'Click the categories button to begin! ';

            % Create CreatedbyKareenaSandhuSalinaMariMentorandMachaelaCruzLabel
            app.CreatedbyKareenaSandhuSalinaMariMentorandMachaelaCruzLabel = uilabel(app.UIFigure);
            app.CreatedbyKareenaSandhuSalinaMariMentorandMachaelaCruzLabel.Position = [243 10 388 22];
            app.CreatedbyKareenaSandhuSalinaMariMentorandMachaelaCruzLabel.Text = 'Created by: Kareena Sandhu, Salina-Mari Mentor, and Machaela Cruz ';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = BrainGame

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end

%Code for the categories page
classdef app2 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure              matlab.ui.Figure
        Image4                matlab.ui.control.Image
        Image3                matlab.ui.control.Image
        Image2                matlab.ui.control.Image
        Image                 matlab.ui.control.Image
        ColorsLabel           matlab.ui.control.Label
        AnimalsLabel          matlab.ui.control.Label
        TransportationLabel   matlab.ui.control.Label
        FruitLabel            matlab.ui.control.Label
        ChooseacategoryLabel  matlab.ui.control.Label
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create ChooseacategoryLabel
            app.ChooseacategoryLabel = uilabel(app.UIFigure);
            app.ChooseacategoryLabel.FontSize = 36;
            app.ChooseacategoryLabel.Position = [154 424 334 48];
            app.ChooseacategoryLabel.Text = 'Choose a category! ';

            % Create FruitLabel
            app.FruitLabel = uilabel(app.UIFigure);
            app.FruitLabel.FontSize = 24;
            app.FruitLabel.Position = [66 348 53 32];
            app.FruitLabel.Text = 'Fruit';

            % Create TransportationLabel
            app.TransportationLabel = uilabel(app.UIFigure);
            app.TransportationLabel.FontSize = 24;
            app.TransportationLabel.Position = [43 135 159 32];
            app.TransportationLabel.Text = 'Transportation';

            % Create AnimalsLabel
            app.AnimalsLabel = uilabel(app.UIFigure);
            app.AnimalsLabel.FontSize = 24;
            app.AnimalsLabel.Position = [435 348 97 32];
            app.AnimalsLabel.Text = 'Animals ';

            % Create ColorsLabel
            app.ColorsLabel = uilabel(app.UIFigure);
            app.ColorsLabel.FontSize = 24;
            app.ColorsLabel.Position = [450 135 82 32];
            app.ColorsLabel.Text = 'Colors ';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [43 236 100 100];
            app.Image.ImageSource = 'Apple Image.png';

            % Create Image2
            app.Image2 = uiimage(app.UIFigure);
            app.Image2.Position = [66 24 100 100];
            app.Image2.ImageSource = 'Car Image.png';

            % Create Image3
            app.Image3 = uiimage(app.UIFigure);
            app.Image3.Position = [435 236 100 100];
            app.Image3.ImageSource = 'Goat Image.png';

            % Create Image4
            app.Image4 = uiimage(app.UIFigure);
            app.Image4.Position = [441 36 100 100];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app2

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end

