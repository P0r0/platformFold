.class public Lcom/duoku/platform/push/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/duoku/platform/push/d;
    .registers 2

    .prologue
    .line 28
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 29
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/duoku/platform/push/d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/push/d;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p2, v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/push/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_f} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_44

    move-result-object v0

    .line 63
    :goto_10
    return-object v0

    .line 53
    :catch_11
    move-exception v0

    .line 54
    const-string v0, "ObjectHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_26
    const/4 v0, 0x0

    goto :goto_10

    .line 56
    :catch_28
    move-exception v0

    .line 57
    const-string v0, "ObjectHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for security issue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 59
    :catch_44
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v1, "ObjectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call method:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_1
    iget-object v1, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 78
    if-eqz p2, :cond_45

    .line 79
    array-length v1, p2

    new-array v3, v1, [Ljava/lang/Class;

    .line 80
    const/4 v1, 0x0

    :goto_d
    array-length v4, p2

    if-lt v1, v4, :cond_1b

    .line 86
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    :goto_14
    iget-object v2, p0, Lcom/duoku/platform/push/d;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    :goto_1a
    return-object v0

    .line 81
    :cond_1b
    aget-object v4, p2, v1

    if-eqz v4, :cond_2a

    .line 82
    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 80
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 84
    :cond_2a
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2e} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_67

    goto :goto_27

    .line 94
    :catch_2f
    move-exception v1

    .line 96
    const-string v1, "ObjectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find method:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 89
    :cond_45
    const/4 v1, 0x0

    :try_start_46
    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_49} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_49} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_67

    move-result-object v1

    goto :goto_14

    .line 98
    :catch_4b
    move-exception v1

    .line 99
    const-string v1, "ObjectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get method:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for security issue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 101
    :catch_67
    move-exception v1

    .line 102
    const-string v2, "ObjectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
