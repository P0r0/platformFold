.class public Lcom/baidu/apollon/restnet/b/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashSet;

.field private static final b:Ljava/util/HashSet;


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/apollon/restnet/b/i;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/apollon/restnet/b/i;->b:Ljava/util/HashSet;

    sget-object v0, Lcom/baidu/apollon/restnet/b/i;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/apollon/restnet/b/i;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/apollon/restnet/b/i;->b:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/apollon/restnet/b/i;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/apollon/restnet/b/i;->c:I

    iput p2, p0, Lcom/baidu/apollon/restnet/b/i;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/baidu/apollon/restnet/b/i;->c:I

    if-le p2, v2, :cond_27

    :cond_6
    :goto_6
    const-string v1, "aaa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryRequest is called ,retry flag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/baidu/apollon/restnet/b/i;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :goto_26
    return v0

    :cond_27
    sget-object v2, Lcom/baidu/apollon/restnet/b/i;->a:Ljava/util/HashSet;

    invoke-virtual {p0, v2, p1}, Lcom/baidu/apollon/restnet/b/i;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v0, v1

    goto :goto_6

    :cond_31
    sget-object v2, Lcom/baidu/apollon/restnet/b/i;->b:Ljava/util/HashSet;

    invoke-virtual {p0, v2, p1}, Lcom/baidu/apollon/restnet/b/i;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_3b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26
.end method

.method protected a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
