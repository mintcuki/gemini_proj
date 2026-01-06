# React Todo App

React와 LocalStorage를 사용하여 만든 간단하고 직관적인 할 일 목록 관리 애플리케이션입니다.

## 📋 프로젝트 개요

이 프로젝트는 기본적인 CRUD(Create, Read, Update, Delete) 기능을 갖춘 Todo List 웹 애플리케이션입니다. React Hooks를 사용하여 상태를 관리하며, 브라우저의 `localStorage`를 활용하여 새로고침 후에도 데이터가 유지되도록 구현되었습니다.

## ✨ 주요 기능

*   **할 일 추가**: 새로운 할 일을 입력하여 목록에 추가할 수 있습니다.
*   **완료 상태 토글**: 할 일의 완료 여부를 체크박스로 표시할 수 있습니다 (취소선 효과).
*   **할 일 삭제**: 더 이상 필요 없는 할 일을 목록에서 제거할 수 있습니다.
*   **데이터 영구 저장**: 모든 변경 사항은 브라우저의 LocalStorage에 즉시 저장됩니다.

## 🛠 기술 스택

*   **Frontend**: React (v19)
*   **State Management**: React Hooks (`useState`, `useEffect`)
*   **Style**: CSS Modules, Standard CSS
*   **Tooling**: Create React App, npm

## 🚀 설치 및 실행 방법

이 프로젝트를 로컬 환경에서 실행하려면 다음 단계를 따르세요.

### 1. 사전 요구 사항
*   Node.js (LTS 버전 권장)
*   npm

### 2. 프로젝트 클론 및 디렉토리 이동
```bash
# 프로젝트 디렉토리로 이동 (gemini_proj 폴더가 루트라고 가정)
cd todo-app
```

### 3. 의존성 설치
```bash
npm install
```

### 4. 개발 서버 실행
```bash
npm start
```
명령어를 실행하면 브라우저에서 `http://localhost:3000`이 자동으로 열립니다.

## 📂 폴더 구조

```
todo-app/
├── public/             # 정적 파일 (index.html 등)
├── src/                # 소스 코드
│   ├── components/     # UI 컴포넌트 (AddTodo, TodoItem 등)
│   ├── App.js          # 메인 애플리케이션 로직
│   ├── index.js        # 진입점
│   └── ...
└── package.json        # 프로젝트 설정 및 의존성
```