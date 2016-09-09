.class public Lcom/gionee/gsp/util/GnBeanUtils;
.super Ljava/lang/Object;
.source "GnBeanUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method protected static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 48
    const/4 v1, 0x0

    :goto_6
    return-object v1

    .line 43
    :cond_7
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v1

    goto :goto_6

    .line 44
    :catch_c
    move-exception v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method protected static getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gionee/gsp/util/GnBeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method protected static makeAccessible(Ljava/lang/reflect/Field;)V
    .registers 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 56
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    :cond_1c
    return-void
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/gionee/gsp/util/GnBeanUtils;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 18
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2b

    .line 19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find field ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] on target ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_2b
    invoke-static {v1}, Lcom/gionee/gsp/util/GnBeanUtils;->makeAccessible(Ljava/lang/reflect/Field;)V

    .line 24
    :try_start_2e
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_31} :catch_32

    .line 28
    :goto_31
    return-void

    .line 25
    :catch_32
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_31
.end method
