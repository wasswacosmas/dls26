#!/usr/bin/env python3
"""
DLS26 Fan Website - Main Backend Application
This module serves as the main entry point for the DLS26 fan website backend.
"""

import os
import sys
from datetime import datetime


class DLS26Website:
    """Main application class for DLS26 fan website."""
    
    def __init__(self):
        self.name = "DLS26 Fan Website"
        self.version = "1.0.0"
        self.created_at = datetime.now()
    
    def start(self):
        """Start the application."""
        print(f"Starting {self.name} v{self.version}")
        print(f"Application initialized at {self.created_at}")
    
    def get_info(self):
        """Return application information."""
        return {
            "name": self.name,
            "version": self.version,
            "created_at": self.created_at.isoformat()
        }


def main():
    """Main entry point."""
    app = DLS26Website()
    app.start()
    info = app.get_info()
    print(f"App Info: {info}")


if __name__ == "__main__":
    main()
