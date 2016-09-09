.class public Lcom/youju/statistics/c/p;
.super Lcom/youju/statistics/c/l;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/c/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/l;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "content://com.gionee.gncustomerservice/improvement"

    iget-object v2, p0, Lcom/youju/statistics/c/p;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/youju/statistics/a/g;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "state"

    invoke-static {v1, v0}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/youju/statistics/c/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImprovementStateFromCustomerServiceProvider"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Y"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_43
    .catchall {:try_start_1 .. :try_end_36} :catchall_6b

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    goto :goto_3d

    :catch_43
    move-exception v0

    :try_start_44
    sget-object v2, Lcom/youju/statistics/c/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImprovementStateFromCustomerServiceProvider() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_6b

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not get state from customer provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6b
    move-exception v0

    invoke-static {v1}, Lcom/youju/statistics/a/g;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public c()Z
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/youju/statistics/c/p;->a()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method
