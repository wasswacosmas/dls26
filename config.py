"""
Configuration module for DLS26 Fan Website
Handles all configuration settings and environment variables.
"""

import os
from typing import Dict, Any


class Config:
    """Base configuration class."""
    
    DEBUG = os.environ.get("DEBUG", False)
    SITE_TITLE = "DLS26 Fan Website"
    SITE_DESCRIPTION = "A comprehensive fan website for DLS26"
    VERSION = "1.0.0"
    
    # Database configuration
    DATABASE_URL = os.environ.get("DATABASE_URL", "sqlite:///dls26.db")
    
    # Server configuration
    HOST = os.environ.get("HOST", "localhost")
    PORT = int(os.environ.get("PORT", 8000))
    
    # Feature flags
    FEATURES = {
        "player_stats": True,
        "match_history": True,
        "team_rankings": True,
        "user_comments": True,
    }
    
    @classmethod
    def get_config(cls) -> Dict[str, Any]:
        """Get all configuration as dictionary."""
        return {
            "debug": cls.DEBUG,
            "site_title": cls.SITE_TITLE,
            "site_description": cls.SITE_DESCRIPTION,
            "version": cls.VERSION,
            "database_url": cls.DATABASE_URL,
            "host": cls.HOST,
            "port": cls.PORT,
            "features": cls.FEATURES,
        }


class DevelopmentConfig(Config):
    """Development configuration."""
    DEBUG = True


class ProductionConfig(Config):
    """Production configuration."""
    DEBUG = False


def get_config(environment: str = "development") -> Config:
    """Get configuration based on environment."""
    configs = {
        "development": DevelopmentConfig,
        "production": ProductionConfig,
    }
    return configs.get(environment, DevelopmentConfig)
