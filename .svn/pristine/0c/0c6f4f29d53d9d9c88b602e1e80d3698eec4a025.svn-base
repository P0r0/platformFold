.class public abstract Lcom/duoku/platform/download/VersionedNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/VersionedNotification$a;,
        Lcom/duoku/platform/download/VersionedNotification$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/VersionedNotification;
    .registers 3

    .prologue
    .line 22
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 25
    new-instance v0, Lcom/duoku/platform/download/VersionedNotification$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/VersionedNotification$a;-><init>(Landroid/content/Context;)V

    .line 29
    :goto_b
    return-object v0

    .line 27
    :cond_c
    new-instance v0, Lcom/duoku/platform/download/VersionedNotification$b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/VersionedNotification$b;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public abstract getNotification()Landroid/app/Notification;
.end method

.method public abstract setAutoCancel(Z)V
.end method

.method public abstract setContent(Landroid/widget/RemoteViews;)V
.end method

.method public abstract setContentInfo(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setContentText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setDefaults(I)V
.end method

.method public abstract setDeleteIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setFullScreenIntent(Landroid/app/PendingIntent;Z)V
.end method

.method public abstract setLargeIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setLatestEventInfo(Z)V
.end method

.method public abstract setLights(III)V
.end method

.method public abstract setNumber(I)V
.end method

.method public abstract setOngoing(Z)V
.end method

.method public abstract setOnlyAlertOnce(Z)V
.end method

.method public abstract setProgress(IIZ)V
.end method

.method public abstract setSmallIcon(I)V
.end method

.method public abstract setSmallIcon(II)V
.end method

.method public abstract setSound(Landroid/net/Uri;)V
.end method

.method public abstract setSound(Landroid/net/Uri;I)V
.end method

.method public abstract setTicker(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)V
.end method

.method public abstract setVibrate([J)V
.end method

.method public abstract setWhen(J)V
.end method
