.class public final Lcom/chinaMobile/udata/charge/mini/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/chinaMobile/udata/charge/mini/i;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chinaMobile/udata/charge/mini/i;

    invoke-direct {v0}, Lcom/chinaMobile/udata/charge/mini/i;-><init>()V

    sput-object v0, Lcom/chinaMobile/udata/charge/mini/i;->a:Lcom/chinaMobile/udata/charge/mini/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/chinaMobile/udata/charge/mini/i;
    .registers 1

    sget-object v0, Lcom/chinaMobile/udata/charge/mini/i;->a:Lcom/chinaMobile/udata/charge/mini/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/i;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/chinaMobile/udata/charge/mini/i;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_6
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-string v1, ""

    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashHandler"

    invoke-static {v1, v0}, Lcom/chinaMobile/udata/charge/mini/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chinaMobile/udata/charge/mini/i;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/chinaMobile/udata/charge/mini/MobileAgent;->onErr(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/i;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/i;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_58
    return-void
.end method
