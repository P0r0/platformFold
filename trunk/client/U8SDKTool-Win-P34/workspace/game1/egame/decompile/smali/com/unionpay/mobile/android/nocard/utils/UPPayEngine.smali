.class public Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/fully/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;,
        Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;
    }
.end annotation


# instance fields
.field private a:Lcom/unionpay/mobile/android/net/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/unionpay/mobile/android/model/b;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    return-void
.end method

.method private native commonMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native decryptResponse(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native desEncryptMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native encryptMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native followRulesMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getServerUrl(III)Ljava/lang/String;
.end method

.method private native getTalkingDataId(I)Ljava/lang/String;
.end method

.method private native getUserInfo(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native initMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private n(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native openupgradeMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native payingMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native retrieveInitializeKey(J)Ljava/lang/String;
.end method

.method private native rsaPrivateEncryptMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native ruleMessage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native setSessionKey(JLjava/lang/String;)V
.end method

.method private native unBoundMessage(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post message = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->encryptMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    new-instance v0, Lcom/unionpay/mobile/android/net/c;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_5f

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v2, v3, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->decryptResponse(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ response msg ] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-object v0

    :cond_5f
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->desEncryptMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->be:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->be:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app/mobile/json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url  is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/unionpay/mobile/android/net/d;

    invoke-direct {v1, v0}, Lcom/unionpay/mobile/android/net/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    return-void

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->be:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gateway/mobile/json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_5d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_6c
    const-string v3, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "idx  is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNewTypeTn :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v5, v5, Lcom/unionpay/mobile/android/model/b;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz v3, :cond_e0

    :goto_94
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->aJ:I

    invoke-direct {p0, v1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->getServerUrl(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_9d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const/4 v0, 0x2

    goto :goto_6c

    :cond_ad
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    const-string v3, "98"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    const/16 v0, 0x62

    goto :goto_6c

    :cond_be
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    const-string v3, "99"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0x63

    goto :goto_6c

    :cond_cf
    const-string v0, "95"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const/16 v0, 0x5f

    goto :goto_6c

    :cond_e0
    move v1, v2

    goto :goto_94

    :cond_e2
    move v0, v2

    goto :goto_6c
.end method

.method public final a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/model/b;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    if-eq v0, p1, :cond_a

    :cond_8
    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    :cond_a
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v3, 0x1

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->commonMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    if-gtz p3, :cond_23

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->payingMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "pay"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "00"

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->getTalkingDataId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    move-object p1, v0

    goto :goto_8
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-wide v6, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    const-string v2, "android"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/model/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v1, Lcom/unionpay/mobile/android/model/b;->d:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->initMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "secret"

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->retrieveInitializeKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final d()Lcom/unionpay/mobile/android/net/d;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c:Ljava/lang/String;

    return-void
.end method

.method public final e()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .registers 4

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->setSessionKey(JLjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->encryptMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->decryptResponse(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->rsaPrivateEncryptMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_5f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;

    iget v2, v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;->a:I

    if-nez v2, :cond_8a

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->decryptResponse(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resp is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_2b
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;

    iget v0, v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;->a:I

    invoke-interface {v1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;->a(ILjava/lang/String;)V

    const-string v0, "uppayEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPPayEngine:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    return v5

    :cond_5f
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_6b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    goto :goto_5e

    :cond_6b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;->a(ILjava/lang/String;)V

    goto :goto_5e

    :cond_8a
    move-object v2, v1

    goto :goto_2b
.end method

.method public final i(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->ruleMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "rule"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public native initJNIEnv(Landroid/app/Activity;IIZLjava/lang/String;ILjava/lang/String;)J
.end method

.method public final j(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->followRulesMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "followRule"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->openupgradeMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "openupgrade"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->unBoundMessage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "unbindcard"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 6

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->getUserInfo(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "actEntrust msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    const-string v0, "getuserinfo"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->n(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aJ:I

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aJ:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_45

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->c()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "magic_number"

    const-string v2, "20150423"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    new-instance v0, Lcom/unionpay/mobile/android/net/c;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;

    invoke-direct {v2, p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$b;-><init>(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/d;->c()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "magic_number"

    const-string v2, "20131120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method
