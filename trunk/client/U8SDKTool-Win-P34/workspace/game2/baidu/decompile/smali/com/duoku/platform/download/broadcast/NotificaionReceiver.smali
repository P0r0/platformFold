.class public Lcom/duoku/platform/download/broadcast/NotificaionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_CANCLE_NOTIFICATION:Ljava/lang/String; = "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

.field public static final ARG_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final ARG_NOTIFICATION_UPDATE:Ljava/lang/String; = "notification_update"

.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "NotificaionReceiver"

    sput-object v0, Lcom/duoku/platform/download/broadcast/NotificaionReceiver;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 27
    const-string v0, "duoku.opensdk.intent.action.CANCLE_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 29
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 30
    const-string v1, "notification_id"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 32
    sget-object v2, Lcom/duoku/platform/download/broadcast/NotificaionReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notification_id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_33
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 36
    :cond_36
    return-void
.end method
