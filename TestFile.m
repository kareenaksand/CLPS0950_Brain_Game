%TestFile
classdef TestFile < matlab.apps.AppBase

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

