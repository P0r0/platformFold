.class public Lcom/duoku/platform/push/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field private c:Landroid/content/Context;

.field private d:Landroid/app/NotificationManager;

.field private e:Landroid/app/Notification;

.field private f:Landroid/support/v4/app/NotificationCompat$Builder;

.field private g:Ljava/lang/Object;

.field private h:Landroid/widget/RemoteViews;

.field private i:Z

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/app/PendingIntent;

.field private m:J

.field private n:J

.field private o:Landroid/text/TextPaint;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide v0, p0, Lcom/duoku/platform/push/b;->m:J

    .line 43
    iput-wide v0, p0, Lcom/duoku/platform/push/b;->n:J

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/push/b;->o:Landroid/text/TextPaint;

    .line 46
    iput-wide v6, p0, Lcom/duoku/platform/push/b;->a:J

    .line 47
    iput-wide v6, p0, Lcom/duoku/platform/push/b;->b:J

    .line 48
    iput-boolean v4, p0, Lcom/duoku/platform/push/b;->q:Z

    .line 51
    iput-object p1, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/duoku/platform/push/b;->d:Landroid/app/NotificationManager;

    .line 53
    iput-boolean v4, p0, Lcom/duoku/platform/push/b;->i:Z

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/duoku/platform/push/b;->j:I

    .line 55
    iget-object v0, p0, Lcom/duoku/platform/push/b;->o:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_53

    .line 57
    const-string v0, "android.app.Notification$Builder"

    .line 58
    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    new-array v2, v3, [Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    aput-object v3, v2, v4

    .line 57
    invoke-static {v0, v1, v2}, Lcom/duoku/platform/push/a;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    .line 62
    :goto_52
    return-void

    .line 60
    :cond_53
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_52
.end method

.method private a(IZ)V
    .registers 5

    .prologue
    .line 294
    if-eqz p2, :cond_8

    .line 295
    iget v0, p0, Lcom/duoku/platform/push/b;->p:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/duoku/platform/push/b;->p:I

    .line 299
    :goto_7
    return-void

    .line 297
    :cond_8
    iget v0, p0, Lcom/duoku/platform/push/b;->p:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/duoku/platform/push/b;->p:I

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/duoku/platform/push/b;->q:Z

    if-eqz v0, :cond_5

    .line 233
    :goto_4
    return-void

    .line 211
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4f

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "getNotification"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    .line 216
    :goto_1b
    iget-object v0, p0, Lcom/duoku/platform/push/b;->h:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_25

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    iget-object v1, p0, Lcom/duoku/platform/push/b;->h:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 219
    :cond_25
    iget-object v0, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 220
    iget-object v0, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 222
    iget-object v0, p0, Lcom/duoku/platform/push/b;->d:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/duoku/platform/push/b;->j:I

    iget-object v2, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 223
    iget-boolean v0, p0, Lcom/duoku/platform/push/b;->q:Z

    if-eqz v0, :cond_58

    .line 225
    iget-object v0, p0, Lcom/duoku/platform/push/b;->d:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/duoku/platform/push/b;->j:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_4

    .line 229
    :catch_4a
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 214
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/push/b;->e:Landroid/app/Notification;

    goto :goto_1b

    .line 228
    :cond_58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/push/b;->i:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5b} :catch_4a

    goto :goto_4
.end method

.method public a(I)V
    .registers 6

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    .line 66
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setSmallIcon"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_17
    return-void

    .line 68
    :cond_18
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_17
.end method

.method public a(Landroid/content/Intent;Z)V
    .registers 6

    .prologue
    const/high16 v2, 0x8000000

    const/4 v1, 0x0

    .line 142
    if-eqz p2, :cond_21

    .line 143
    iget-object v0, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/push/b;->l:Landroid/app/PendingIntent;

    .line 149
    :goto_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 150
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setContentIntent"

    iget-object v2, p0, Lcom/duoku/platform/push/b;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_20
    return-void

    .line 146
    :cond_21
    iget-object v0, p0, Lcom/duoku/platform/push/b;->c:Landroid/content/Context;

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/push/b;->l:Landroid/app/PendingIntent;

    goto :goto_d

    .line 152
    :cond_2a
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/duoku/platform/push/b;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_20
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .registers 4

    .prologue
    .line 179
    iput-object p1, p0, Lcom/duoku/platform/push/b;->h:Landroid/widget/RemoteViews;

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setContent"

    invoke-virtual {v0, v1, p1}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_13
    return-void

    .line 183
    :cond_14
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_13
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 5

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 82
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setTicker"

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, p1}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_13
    return-void

    .line 84
    :cond_14
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_13
.end method

.method public a(Z)V
    .registers 6

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    .line 200
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setOngoing"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_17
    return-void

    .line 202
    :cond_18
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_17
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 254
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/duoku/platform/push/b;->n:J

    .line 255
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 9

    .prologue
    const/16 v6, 0xe

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_2b

    .line 98
    iput-object p1, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    .line 106
    :goto_8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_3f

    iget-wide v2, p0, Lcom/duoku/platform/push/b;->m:J

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->n:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3f

    .line 119
    :goto_2a
    return-void

    .line 100
    :cond_2b
    if-eqz p1, :cond_3a

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/push/b;->o:Landroid/text/TextPaint;

    const/high16 v1, 0x43480000    # 200.0f

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    goto :goto_8

    .line 103
    :cond_3a
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    goto :goto_8

    .line 109
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoku/platform/push/b;->b:J

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_59

    .line 111
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setContentText"

    const-class v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 113
    :cond_59
    iget-wide v0, p0, Lcom/duoku/platform/push/b;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8e

    .line 114
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/duoku/platform/push/b;->m:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->n:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2a

    .line 116
    :cond_8e
    iget-object v0, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2a
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 290
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/push/b;->a(IZ)V

    .line 291
    return-void
.end method

.method public c(I)V
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 258
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/duoku/platform/push/b;->m:J

    .line 259
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_2a

    iget-wide v2, p0, Lcom/duoku/platform/push/b;->m:J

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->n:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2a

    .line 277
    :cond_29
    :goto_29
    return-void

    .line 262
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoku/platform/push/b;->a:J

    .line 263
    iget-boolean v0, p0, Lcom/duoku/platform/push/b;->i:Z

    if-eqz v0, :cond_29

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6b

    .line 268
    iget-object v0, p0, Lcom/duoku/platform/push/b;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;

    move-result-object v0

    const-string v1, "setProgress"

    .line 269
    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    .line 270
    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/duoku/platform/push/b;->n:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 273
    :cond_6b
    iget-wide v0, p0, Lcom/duoku/platform/push/b;->m:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/duoku/platform/push/b;->n:J

    div-long/2addr v0, v2

    .line 274
    iget-object v2, p0, Lcom/duoku/platform/push/b;->f:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/duoku/platform/push/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_29
.end method
