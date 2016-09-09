.class public final Lcom/baidu/android/pushservice/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/i$b;,
        Lcom/baidu/android/pushservice/i$a;
    }
.end annotation


# static fields
.field static a:I

.field private static e:Ljava/lang/Boolean;

.field private static volatile n:Lcom/baidu/android/pushservice/i;


# instance fields
.field private final A:I

.field b:Landroid/os/Handler;

.field c:Lcom/baidu/android/pushservice/message/d;

.field private d:Z

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/android/pushservice/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/baidu/android/pushservice/i$b;

.field private i:Lcom/baidu/android/pushservice/i$a;

.field private j:Z

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:J

.field private u:[I

.field private v:[I

.field private final w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/android/pushservice/i;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/i;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/baidu/android/pushservice/i;->d:Z

    iput-boolean v2, p0, Lcom/baidu/android/pushservice/i;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->g:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/baidu/android/pushservice/i;->j:Z

    iput v2, p0, Lcom/baidu/android/pushservice/i;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i;->m:Z

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->c()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/i;->q:I

    new-instance v0, Lcom/baidu/android/pushservice/k;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/k;-><init>(Lcom/baidu/android/pushservice/i;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/android/pushservice/l;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/l;-><init>(Lcom/baidu/android/pushservice/i;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->s:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/android/pushservice/i;->t:J

    new-array v0, v3, [I

    fill-array-data v0, :array_7a

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->u:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_86

    iput-object v0, p0, Lcom/baidu/android/pushservice/i;->v:[I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/pushservice/i;->w:I

    iput v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    iput v2, p0, Lcom/baidu/android/pushservice/i;->y:I

    iput v2, p0, Lcom/baidu/android/pushservice/i;->z:I

    const/16 v0, 0x1c20

    iput v0, p0, Lcom/baidu/android/pushservice/i;->A:I

    iput-object p1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->i()I

    move-result v0

    if-lez v0, :cond_66

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->u:[I

    array-length v1, v1

    if-ge v0, v1, :cond_66

    iput v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    :cond_66
    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->j()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/v;->a(I)V

    return-void

    nop

    :array_7a
    .array-data 4
        0xb4
        0x12c
        0x1a4
        0x21c
    .end array-data

    :array_86
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i;->q:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;Lcom/baidu/android/pushservice/i$a;)Lcom/baidu/android/pushservice/i$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i;->i:Lcom/baidu/android/pushservice/i$a;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;Lcom/baidu/android/pushservice/i$b;)Lcom/baidu/android/pushservice/i$b;
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i;->h:Lcom/baidu/android/pushservice/i$b;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/i;->n:Lcom/baidu/android/pushservice/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/android/pushservice/i;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/i;->n:Lcom/baidu/android/pushservice/i;

    :cond_b
    sget-object v0, Lcom/baidu/android/pushservice/i;->n:Lcom/baidu/android/pushservice/i;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    sput-object p0, Lcom/baidu/android/pushservice/i;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/baidu/android/pushservice/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/m;-><init>(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/m;->start()V

    return-void
.end method

.method private a(Z)V
    .registers 8

    const/4 v5, 0x0

    iget v1, p0, Lcom/baidu/android/pushservice/i;->x:I

    if-eqz p1, :cond_101

    iget v0, p0, Lcom/baidu/android/pushservice/i;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/i;->y:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/i;->z:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->v:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aput v5, v0, v2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v0, v0, v2

    iget v2, p0, Lcom/baidu/android/pushservice/i;->y:I

    mul-int/2addr v0, v2

    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_56

    iput v5, p0, Lcom/baidu/android/pushservice/i;->y:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_56

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->v:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_56

    iput v5, p0, Lcom/baidu/android/pushservice/i;->z:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/i;->a(I)V

    :try_start_47
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v3, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/v;->a(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_e2

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v0, v0, v2

    iget v2, p0, Lcom/baidu/android/pushservice/i;->z:I

    mul-int/2addr v0, v2

    const/16 v2, 0x3840

    if-lt v0, v2, :cond_89

    iput v5, p0, Lcom/baidu/android/pushservice/i;->z:I

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    const-string v2, "030101"

    iput-object v2, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v3, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v2, v2, v3

    iput v2, v0, Lcom/baidu/android/pushservice/i/j;->a:I

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :cond_89
    :goto_89
    const-string v0, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTC stat update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/i;->u:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v4, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTC stat update from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :catch_e2
    move-exception v0

    const-string v2, "PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_101
    iput v5, p0, Lcom/baidu/android/pushservice/i;->y:I

    iput v5, p0, Lcom/baidu/android/pushservice/i;->z:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->v:[I

    iget v2, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    if-lez v0, :cond_89

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/i;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    iget v3, p0, Lcom/baidu/android/pushservice/i;->x:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/v;->a(I)V

    goto/16 :goto_89
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/i;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i;)I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i;->q:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i;->k:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/i;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/android/pushservice/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/i;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/android/pushservice/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/android/pushservice/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/i;->o:Z

    return p1
.end method

.method private declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->d:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/baidu/android/pushservice/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_d
    const-string v0, "PushConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect return. mConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/android/pushservice/i;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnectting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/android/pushservice/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_5e

    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "PushConnection"

    const-string v1, "re-token"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/v;->d()V
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_5e

    goto :goto_39

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_61
    :try_start_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushConnection connectImpl from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/i;->e:Ljava/lang/Boolean;

    const/4 v0, -0x1

    sput v0, Lcom/baidu/android/pushservice/i;->a:I

    new-instance v0, Lcom/baidu/android/pushservice/j;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/j;-><init>(Lcom/baidu/android/pushservice/i;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "PushService-PushService-connect"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_a9
    .catchall {:try_start_61 .. :try_end_a9} :catchall_5e

    goto :goto_39
.end method

.method static synthetic e(Lcom/baidu/android/pushservice/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->f()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/android/pushservice/i;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/i;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->i:Lcom/baidu/android/pushservice/i$a;

    return-object v0
.end method

.method private f()V
    .registers 7

    const-string v0, "PushConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectedByPeer, mStoped == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/android/pushservice/i;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushConnection destroy from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->g()V

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->j:Z

    if-eqz v0, :cond_54

    :cond_53
    :goto_53
    return-void

    :cond_54
    iget v0, p0, Lcom/baidu/android/pushservice/i;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/i;->k:I

    iget v0, p0, Lcom/baidu/android/pushservice/i;->k:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_53

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/baidu/android/pushservice/i;->k:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/baidu/android/pushservice/i;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_75

    const/16 v0, 0xbb8

    :cond_75
    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->r:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule retry-- retry times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/i;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_53
.end method

.method static synthetic g(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$b;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->h:Lcom/baidu/android/pushservice/i$b;

    return-object v0
.end method

.method private g()V
    .registers 5

    const-string v0, "PushConnection"

    const-string v1, "destroy"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i;->d:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    if-eqz v0, :cond_33

    :try_start_22
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_45

    :try_start_29
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_42

    :cond_33
    :goto_33
    sget v0, Lcom/baidu/android/pushservice/i;->a:I

    invoke-static {v0}, Lcom/baidu/android/pushservice/jni/PushSocket;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->b()V

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAll Exception on destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private h()V
    .registers 9

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/v;->c()Lcom/baidu/android/pushservice/ak;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->g:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/e/a;

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->g:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_47
    return-void
.end method

.method static synthetic h(Lcom/baidu/android/pushservice/i;)[I
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->u:[I

    return-object v0
.end method

.method private i()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/baidu/android/pushservice/i;)I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i;->x:I

    return v0
.end method

.method private j()V
    .registers 7

    const/4 v0, 0x0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/pushservice/pushservice.cfg"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_18
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_87
    .catchall {:try_start_18 .. :try_end_1d} :catchall_d5

    :try_start_1d
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "rtcseed"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_49

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_49

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->u:[I

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v2, v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->v:[I

    const/4 v5, 0x0

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_49
    const-string v0, "originseed"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/i;->x:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5d} :catch_103
    .catchall {:try_start_1d .. :try_end_5d} :catchall_101

    :cond_5d
    if-eqz v1, :cond_62

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    :cond_62
    :goto_62
    return-void

    :catch_63
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_62

    :catch_87
    move-exception v0

    move-object v1, v2

    :goto_89
    :try_start_89
    const-string v2, "PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTestConfig exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_ab
    .catchall {:try_start_89 .. :try_end_ab} :catchall_101

    if-eqz v1, :cond_62

    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_62

    :catch_b1
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_62

    :catchall_d5
    move-exception v0

    move-object v1, v2

    :goto_d7
    if-eqz v1, :cond_dc

    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    :cond_dc
    :goto_dc
    throw v0

    :catch_dd
    move-exception v1

    const-string v2, "PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_dc

    :catchall_101
    move-exception v0

    goto :goto_d7

    :catch_103
    move-exception v0

    goto :goto_89
.end method

.method static synthetic j(Lcom/baidu/android/pushservice/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->e()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/android/pushservice/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->o:Z

    return v0
.end method

.method static synthetic l(Lcom/baidu/android/pushservice/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->f:Z

    return v0
.end method

.method static synthetic m(Lcom/baidu/android/pushservice/i;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->s:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/android/pushservice/i;->k:I

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i;->j:Z

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->e()V

    return-void
.end method

.method public c()V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "PushConnection"

    const-string v1, "---stop---"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushConnection stop from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/baidu/android/pushservice/i;->f:Z

    iput-boolean v4, p0, Lcom/baidu/android/pushservice/i;->j:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->g()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/i;->n:Lcom/baidu/android/pushservice/i;

    return-void
.end method

.method public d()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i;->t:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/message/d;->c()V

    iput-wide v0, p0, Lcom/baidu/android/pushservice/i;->t:J

    const-string v0, "PushConnection"

    const-string v1, "sendHeartbeatMessage"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_27
    :goto_27
    invoke-direct {p0}, Lcom/baidu/android/pushservice/i;->h()V

    return-void

    :cond_2b
    const-string v0, "PushConnection"

    const-string v1, "sendHeartbeatMessage ingnored\uff0c because too frequent."

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_27
.end method
