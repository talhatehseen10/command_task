# 🗣️ Command Task App

A smart task manager built with Flutter that supports **natural voice commands**, powered by **LLM integration** for intelligent parsing. Create, update, or delete tasks just by speaking.

---

## ✨ Features

- 🎙️ **Voice-controlled task creation**  
  Say something like:  
  > "Create a meeting with the design team tomorrow at 10 AM"  
  ...and the app understands and creates the task accordingly.

- 🧠 **LLM-based natural language understanding**  
  Integrates with **Gemini (Google's Generative AI)** to extract structured data from freeform commands.

- 📋 **Task card UI**  
  All tasks are visually represented in sleek, minimal cards.

- 💾 **Persistent storage**  
  Tasks are saved using `get_storage` so your data stays available even after app restarts.

- ⚙️ **Reactive UI with GetX**  
  State updates automatically when tasks are created or updated—no manual refresh needed.

---

## 🚀 Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/talhatehseen10/command_task.git
   cd command_task
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Add your Google API key for Gemini:**

   Open `lib/services/llm_service.dart` and replace:

   ```dart
   const String apiKey = "YOUR_API_KEY";
   ```

   with your actual [Google Gemini API key](https://aistudio.google.com/app/apikey).

4. **Run the app:**

   ```bash
   flutter run
   ```

---

## 🤖 LLM Integration (Gemini Pro)

The app uses **Gemini-2.0 Flash** from Google AI to convert natural language commands into structured JSON task data.

### 🔄 Workflow:

1. The user speaks a task using the mic.
2. The command is converted to text using `speech_to_text`.
3. The text is sent to Gemini with this kind of prompt:
   ```
   You are a voice assistant for a task manager app. Extract structured data from the following command:

   "Create meeting with the team tomorrow at 10"

   Return a JSON object:
   {
     "action": "create/update/delete",
     "title": "...",
     "description": "...", // optional
     "dateTime": "YYYY-MM-DDTHH:MM:SS"
   }
   ```
4. Gemini returns a valid JSON object with the fields, which is then added to the task list using a controller.

---

## ⚙️ State Management: Why GetX?

We use **GetX** for state management because it's:

- ✅ **Reactive** – Observables (`RxList`) auto-update UI.
- 🧼 **Clean and minimal** – No boilerplate like in Provider/Bloc.
- 🧠 **Simple to scale** – Can easily manage complex states and services.

### Example:

```dart
RxList<Task> tasks = <Task>[].obs;

void addTask(Task task) {
  tasks.add(task);
}
```

The UI updates immediately when `tasks` changes.

---

## 📂 Folder Structure

lib/
│
├── views/                      # Feature-based views
│   └── home/                     # Home module
│       ├── model/                # Task model (e.g., fromJson / toJson)
│       ├── controller/           # GetX controller for Home
│       ├── view/                 # UI screens for Home
│       ├── widgets/              # Reusable UI components
│       └── binding/              # HomeBinding for dependency injection
│
├── services/                     # LLM & voice services (e.g., Gemini, speech-to-text)
├── utils/                        # Utility functions (e.g., date parsing)
├── routes/                       # App routing and route management
---

## 🧪 Example Command & Response

**Voice Command:**  
> "Create meeting with marketing team tomorrow at 11"

**Gemini JSON Output:**
```json
{
  "action": "create",
  "title": "meeting with marketing team",
  "dateTime": "2025-05-15T11:00:00"
}
```

---

## 📌 Dependencies Used

- `get` – State management
- `get_storage` – Local storage
- `speech_to_text` – Voice input
- `dio` – Network requests

---

## 👨‍💻 Author

Made with ❤️ by [Muhammad Talha](https://www.linkedin.com/in/muhammad-talha-qureshi-639992173/)
