.class public Lglrecorder/NativeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NativeReceiver.java"


# instance fields
.field public cbOnReceive:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private native nFinalize()V
.end method

.method private native nOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lglrecorder/NativeReceiver;->nFinalize()V

    .line 22
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lglrecorder/NativeReceiver;->nOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    return-void
.end method
