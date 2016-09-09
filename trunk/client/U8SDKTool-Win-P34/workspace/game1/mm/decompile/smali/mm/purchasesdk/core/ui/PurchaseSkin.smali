.class public Lmm/purchasesdk/core/ui/PurchaseSkin;
.super Ljava/lang/Object;
.source "PurchaseSkin.java"


# static fields
.field public static final SKIN_SYSTEM_ONE:I = 0x1

.field public static final SKIN_SYSTEM_THREE:I = 0x3

.field public static final SKIN_SYSTEM_TWO:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jdMethod_short(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.core.ui.PurchaseSkin_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 22
    :goto_7
    const/4 v0, 0x0

    .line 24
    .local v0, "_jdMethod_short":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "jdMethod_short"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 29
    :goto_16
    const/4 v3, 0x0

    .line 31
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 32
    :try_start_19
    const-string v4, "sec"

    const-string v5, "jdMethod_short is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_29} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_29} :catch_41

    move-result-object v3

    .line 46
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 19
    .end local v0    # "_jdMethod_short":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 20
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 26
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_jdMethod_short":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 36
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 39
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a

    .line 42
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_41
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2a
.end method
