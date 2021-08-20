import javax.swing.*;

/**
 * Главный класс программы
 * @version 1.0
 */
public class App {
    static Runnable runnable = () -> {
        try {
            Thread.sleep(10000);
            createInfoTextFrame("Поток завершил работу");
        } catch (InterruptedException e) {
            System.out.print("Thread has been interrupted");
        }
    };
    static Thread thread = new Thread(runnable,"Thread");
    /**
     * Создает фрейм с сообщением
     * @param message Содержит текст сообщения
     */
    public static void createInfoTextFrame(String message) {
        JFrame infoFrame = new JFrame("Внимание!");
        infoFrame.setSize(200, 120);
        infoFrame.setVisible(true);
        infoFrame.setLocationRelativeTo(null);

        JLabel textInfo = new JLabel(message);
        textInfo.setVerticalAlignment(JLabel.CENTER);
        textInfo.setHorizontalAlignment(JLabel.CENTER);
        infoFrame.add(textInfo);
    }

    /**
     * Создает главное окно
     */
    public static void createGUI() {
        JFrame mainFrame = new JFrame("Главное окно");
        mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        mainFrame.setSize(250, 170);

        JButton buttonStartThread = new JButton("Запустить поток");
        buttonStartThread.setBounds(45, 45, 150, 50);
        buttonStartThread.addActionListener(e -> {
            switch (thread.getState()) {
                case NEW:
                    thread.start();
                    break;
                case TERMINATED:
                    thread = new Thread(runnable, "Thread");
                    thread.start();
                    break;
                default: createInfoTextFrame("Поток уже запущен");
            }
        });
        mainFrame.add(buttonStartThread);
        mainFrame.setLayout(null);
        mainFrame.setLocationRelativeTo(null);
        mainFrame.setVisible(true);
    }

    public static void main(String[] args) {
        JFrame.setDefaultLookAndFeelDecorated(true);
        javax.swing.SwingUtilities.invokeLater(App::createGUI);
    }
}
