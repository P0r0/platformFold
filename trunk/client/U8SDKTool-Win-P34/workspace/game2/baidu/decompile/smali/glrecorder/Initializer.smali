.class public Lglrecorder/Initializer;
.super Landroid/content/ContentProvider;
.source "Initializer.java"


# static fields
.field public static GL_RECORDING_AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkNotBlacklisted()Z
    .registers 3

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n7100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_32

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v0, :cond_30

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "EMI6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 34
    :cond_30
    const/4 v0, 0x0

    .line 36
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public static isRecording()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-eqz v0, :cond_9

    .line 68
    invoke-static {}, Lglrecorder/Initializer;->nIsRecording()Z

    move-result v0

    .line 69
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static native nIsRecording()Z
.end method

.method public static native nPauseRecording()V
.end method

.method public static native nResumeRecording()V
.end method

.method public static native nSetAudioEnabled(Z)V
.end method

.method private static native nSetContext(Landroid/content/Context;)V
.end method

.method public static pauseRecording()V
    .registers 1

    .prologue
    .line 73
    sget-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-eqz v0, :cond_7

    .line 74
    invoke-static {}, Lglrecorder/Initializer;->nPauseRecording()V

    .line 75
    :cond_7
    return-void
.end method

.method public static resumeRecording()V
    .registers 1

    .prologue
    .line 78
    sget-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-eqz v0, :cond_7

    .line 79
    invoke-static {}, Lglrecorder/Initializer;->nResumeRecording()V

    .line 80
    :cond_7
    return-void
.end method

.method public static setAudioEnabled(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 83
    sget-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-eqz v0, :cond_7

    .line 84
    invoke-static {p0}, Lglrecorder/Initializer;->nSetAudioEnabled(Z)V

    .line 85
    :cond_7
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 21
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_8

    .line 29
    :goto_7
    return v2

    .line 24
    :cond_8
    const-string v0, "glshim"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lglrecorder/Initializer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lglrecorder/Initializer;->nSetContext(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lglrecorder/Initializer;->checkNotBlacklisted()Z

    move-result v0

    sput-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_7

    .line 27
    :catch_1b
    move-exception v0

    goto :goto_7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
