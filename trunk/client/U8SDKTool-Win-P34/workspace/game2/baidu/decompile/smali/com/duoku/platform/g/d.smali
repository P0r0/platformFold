.class public Lcom/duoku/platform/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/g/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/duoku/platform/g/a;",
            "Lcom/duoku/platform/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/duoku/platform/g/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Lcom/duoku/platform/g/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/g/d$a;-><init>(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/d$a;)V

    iput-object v0, p0, Lcom/duoku/platform/g/d;->c:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private a(I)Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/duoku/platform/g/a;",
            "Lcom/duoku/platform/g/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, v2

    .line 198
    :goto_12
    return-object v0

    .line 185
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_b

    goto :goto_12
.end method

.method static synthetic a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;
    .registers 3

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/duoku/platform/g/a;)V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_d

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_d
    return-void
.end method

.method private a(Lcom/duoku/platform/g/a;Lcom/duoku/platform/g/f;)V
    .registers 4

    .prologue
    .line 149
    if-eqz p2, :cond_7

    .line 151
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_7
    invoke-static {p1}, Lcom/duoku/platform/g/c;->a(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V
    .registers 2

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I
    .registers 8

    .prologue
    .line 62
    iget-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestUrl == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/duoku/platform/g/a;

    invoke-direct {v0}, Lcom/duoku/platform/g/a;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/duoku/platform/g/a;->b(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/duoku/platform/util/a;

    invoke-direct {v1}, Lcom/duoku/platform/util/a;-><init>()V

    .line 68
    invoke-virtual {v1, p3}, Lcom/duoku/platform/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/duoku/platform/g/a;->b(I)V

    .line 71
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->c(I)V

    .line 72
    iget-object v1, p0, Lcom/duoku/platform/g/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Handler;)V

    .line 75
    invoke-direct {p0, v0, p4}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/a;Lcom/duoku/platform/g/f;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/duoku/platform/g/f;)I
    .registers 9

    .prologue
    .line 393
    new-instance v0, Lcom/duoku/platform/g/a;

    invoke-direct {v0}, Lcom/duoku/platform/g/a;-><init>()V

    .line 394
    invoke-virtual {v0, p1}, Lcom/duoku/platform/g/a;->b(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(I)V

    .line 396
    invoke-virtual {v0, p3}, Lcom/duoku/platform/g/a;->c(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p4, p5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 398
    invoke-virtual {v0, p2}, Lcom/duoku/platform/g/a;->b(I)V

    .line 399
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->c(I)V

    .line 400
    iget-object v1, p0, Lcom/duoku/platform/g/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Handler;)V

    .line 401
    invoke-direct {p0, v0, p6}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/a;Lcom/duoku/platform/g/f;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
