.class public Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$AutoInstall;,
        Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$AutoUninstall;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "AutoInstallAppMonitorReceiver"

    sput-object v0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDataIfNecessary(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;-><init>(Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;Landroid/content/Intent;)V

    .line 62
    invoke-virtual {v0}, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;->start()V

    .line 63
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;->context:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;->updateDataIfNecessary(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
