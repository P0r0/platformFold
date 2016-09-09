.class public Lmm/purchasesdk/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# static fields
.field private static d:Lmm/purchasesdk/Purchase;

.field private static mPurchase:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmm/purchasesdk/Purchase;
    .registers 6

    .prologue
    .line 15
    sget-object v4, Lmm/purchasesdk/Purchase;->d:Lmm/purchasesdk/Purchase;

    if-nez v4, :cond_b

    .line 17
    new-instance v4, Lmm/purchasesdk/Purchase;

    invoke-direct {v4}, Lmm/purchasesdk/Purchase;-><init>()V

    sput-object v4, Lmm/purchasesdk/Purchase;->d:Lmm/purchasesdk/Purchase;

    .line 20
    :cond_b
    const/4 v1, 0x0

    .line 22
    .local v1, "cls":Ljava/lang/Class;
    :try_start_c
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_27

    move-result-object v1

    .line 27
    :goto_12
    const/4 v0, 0x0

    .line 29
    .local v0, "_getInstance":Ljava/lang/reflect/Method;
    :try_start_13
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1b} :catch_2c

    move-result-object v0

    .line 34
    :goto_1c
    const/4 v3, 0x0

    .line 36
    .local v3, "item":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_21} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_21} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_21} :catch_3b

    move-result-object v3

    .line 47
    .end local v3    # "item":Ljava/lang/Object;
    :goto_22
    sput-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    .line 48
    sget-object v4, Lmm/purchasesdk/Purchase;->d:Lmm/purchasesdk/Purchase;

    return-object v4

    .line 24
    .end local v0    # "_getInstance":Ljava/lang/reflect/Method;
    :catch_27
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_12

    .line 31
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getInstance":Ljava/lang/reflect/Method;
    :catch_2c
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1c

    .line 38
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "item":Ljava/lang/Object;
    :catch_31
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_22

    .line 41
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_22

    .line 44
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3b
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_22
.end method

.method public static getReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 188
    :goto_7
    const/4 v0, 0x0

    .line 190
    .local v0, "_getReason":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getReason"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 195
    :goto_16
    const/4 v3, 0x0

    .line 197
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 198
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "getSDKVersion is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
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

    .line 212
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 185
    .end local v0    # "_getReason":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 192
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getReason":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 202
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 205
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a

    .line 208
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_41
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static jdMethod_short(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2f

    move-result-object v1

    .line 645
    :goto_7
    const/4 v0, 0x0

    .line 647
    .local v0, "_IIIiIIIIIi":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "jdMethod_short"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_34

    move-result-object v0

    .line 652
    :goto_16
    const/4 v3, 0x0

    .line 654
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 655
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "jdMethod_short is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_20
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2b} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_2b} :catch_43

    move-result-object v3

    .line 669
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2c
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 642
    .end local v0    # "_IIIiIIIIIi":Ljava/lang/reflect/Method;
    :catch_2f
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 649
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_IIIiIIIIIi":Ljava/lang/reflect/Method;
    :catch_34
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 659
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_39
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2c

    .line 662
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 663
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2c

    .line 665
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_43
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2c
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .registers 9
    .param p1, "a"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2b

    move-result-object v1

    .line 257
    :goto_7
    const/4 v0, 0x0

    .line 259
    .local v0, "_clearCache":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "clearCache"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_30

    move-result-object v0

    .line 265
    :goto_16
    if-nez v0, :cond_1f

    .line 266
    :try_start_18
    const-string v3, "cxl1"

    const-string v4, "clearCache is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1f
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_2a} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_3a

    .line 276
    :goto_2a
    return-void

    .line 254
    .end local v0    # "_clearCache":Ljava/lang/reflect/Method;
    :catch_2b
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 261
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_clearCache":Ljava/lang/reflect/Method;
    :catch_30
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 270
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_35
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 273
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3a
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method public enableCache(Z)V
    .registers 10
    .param p1, "a"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_30

    move-result-object v1

    .line 288
    :goto_7
    const/4 v0, 0x0

    .line 290
    .local v0, "_enableCache":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "enableCache"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_35

    move-result-object v0

    .line 295
    :goto_16
    const/4 v3, 0x0

    .line 297
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 298
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "clearCache is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_20
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2f} :catch_3f

    .line 308
    :goto_2f
    return-void

    .line 285
    .end local v0    # "_enableCache":Ljava/lang/reflect/Method;
    .end local v3    # "out":Ljava/lang/Object;
    :catch_30
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 292
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_enableCache":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 302
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_3a
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    .line 305
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3f
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2f
.end method

.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "a"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2f

    move-result-object v1

    .line 447
    :goto_7
    const/4 v0, 0x0

    .line 449
    .local v0, "_getDescription":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getDescription"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_34

    move-result-object v0

    .line 454
    :goto_16
    const/4 v3, 0x0

    .line 456
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 457
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "getDescription is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_20
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2b} :catch_3e

    move-result-object v3

    .line 468
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2c
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 444
    .end local v0    # "_getDescription":Ljava/lang/reflect/Method;
    :catch_2f
    move-exception v2

    .line 445
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 451
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getDescription":Ljava/lang/reflect/Method;
    :catch_34
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 461
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_39
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2c

    .line 464
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2c
.end method

.method public getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "a"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2f

    move-result-object v1

    .line 155
    :goto_7
    const/4 v0, 0x0

    .line 157
    .local v0, "_getSDKVersion":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getSDKVersion"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_34

    move-result-object v0

    .line 162
    :goto_16
    const/4 v3, 0x0

    .line 164
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 165
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "getSDKVersion is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_20
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2b} :catch_3e

    move-result-object v3

    .line 176
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2c
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 152
    .end local v0    # "_getSDKVersion":Ljava/lang/reflect/Method;
    :catch_2f
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 159
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getSDKVersion":Ljava/lang/reflect/Method;
    :catch_34
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 169
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_39
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2c

    .line 172
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2c
.end method

.method public init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    .registers 10
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_33

    move-result-object v1

    .line 124
    :goto_7
    const/4 v0, 0x0

    .line 126
    .local v0, "_init":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "init"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_38

    move-result-object v0

    .line 132
    :goto_1b
    if-nez v0, :cond_24

    .line 133
    :try_start_1d
    const-string v3, "cxl1"

    const-string v4, "init is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_24
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_32} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_32} :catch_42

    .line 143
    :goto_32
    return-void

    .line 121
    .end local v0    # "_init":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 128
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_init":Ljava/lang/reflect/Method;
    :catch_38
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 137
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3d
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 140
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_42
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .registers 15
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # I
    .param p4, "d"    # Ljava/lang/String;
    .param p5, "f"    # Z
    .param p6, "g"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 508
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_5f

    move-result-object v1

    .line 513
    :goto_7
    const/4 v0, 0x0

    .line 515
    .local v0, "_order":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "order"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2e} :catch_64

    move-result-object v0

    .line 520
    :goto_2f
    const/4 v3, 0x0

    .line 522
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_39

    .line 523
    :try_start_32
    const-string v4, "cxl1"

    const-string v5, "order is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_39
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_5b} :catch_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_5b} :catch_6e

    move-result-object v3

    .line 534
    .end local v3    # "out":Ljava/lang/Object;
    :goto_5c
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 510
    .end local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_5f
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 517
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_64
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2f

    .line 527
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_69
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5c

    .line 530
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_6e
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5c
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # I
    .param p4, "d"    # Ljava/lang/String;
    .param p5, "f"    # Z
    .param p6, "g"    # Lmm/purchasesdk/OnPurchaseListener;
    .param p7, "h"    # Ljava/lang/String;
    .param p8, "i"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_71

    move-result-object v1

    .line 581
    :goto_7
    const/4 v0, 0x0

    .line 583
    .local v0, "_order":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "order"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_39} :catch_76

    move-result-object v0

    .line 588
    :goto_3a
    const/4 v3, 0x0

    .line 590
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_44

    .line 591
    :try_start_3d
    const-string v4, "cxl1"

    const-string v5, "order is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_44
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    const/4 v6, 0x6

    aput-object p7, v5, v6

    const/4 v6, 0x7

    aput-object p8, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_6d} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_6d} :catch_80

    move-result-object v3

    .line 602
    .end local v3    # "out":Ljava/lang/Object;
    :goto_6e
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 578
    .end local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_71
    move-exception v2

    .line 579
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 585
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_76
    move-exception v2

    .line 586
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3a

    .line 595
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_7b
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6e

    .line 598
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_80
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6e
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .registers 13
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # I
    .param p4, "d"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_4b

    move-result-object v1

    .line 90
    :goto_7
    const/4 v0, 0x0

    .line 92
    .local v0, "_order":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "order"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_24} :catch_50

    move-result-object v0

    .line 97
    :goto_25
    const/4 v3, 0x0

    .line 99
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_2f

    .line 100
    :try_start_28
    const-string v4, "cxl1"

    const-string v5, "order is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2f
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_47} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_47} :catch_5a

    move-result-object v3

    .line 111
    .end local v3    # "out":Ljava/lang/Object;
    :goto_48
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 87
    .end local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_4b
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 94
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_50
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_25

    .line 104
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_55
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_48

    .line 107
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5a
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_48
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .registers 14
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # I
    .param p4, "d"    # Z
    .param p5, "f"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_57

    move-result-object v1

    .line 352
    :goto_7
    const/4 v0, 0x0

    .line 354
    .local v0, "_order":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "order"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_29} :catch_5c

    move-result-object v0

    .line 359
    :goto_2a
    const/4 v3, 0x0

    .line 361
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_34

    .line 362
    :try_start_2d
    const-string v4, "cxl1"

    const-string v5, "order is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_34
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_53} :catch_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_53} :catch_66

    move-result-object v3

    .line 373
    .end local v3    # "out":Ljava/lang/Object;
    :goto_54
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 349
    .end local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_57
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 356
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_5c
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2a

    .line 366
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_61
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_54

    .line 369
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_66
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_54
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .registers 12
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 542
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3f

    move-result-object v1

    .line 547
    :goto_7
    const/4 v0, 0x0

    .line 549
    .local v0, "_order":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "order"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_44

    move-result-object v0

    .line 554
    :goto_20
    const/4 v3, 0x0

    .line 556
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_2a

    .line 557
    :try_start_23
    const-string v4, "cxl1"

    const-string v5, "order is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_2a
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_3b} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_3b} :catch_4e

    move-result-object v3

    .line 568
    .end local v3    # "out":Ljava/lang/Object;
    :goto_3c
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 544
    .end local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_3f
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 551
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_order":Ljava/lang/reflect/Method;
    :catch_44
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 561
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_49
    move-exception v2

    .line 562
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3c

    .line 564
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4e
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3c
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .registers 12
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .param p4, "d"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_43

    move-result-object v1

    .line 225
    :goto_7
    const/4 v0, 0x0

    .line 227
    .local v0, "_query":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "query"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_24} :catch_48

    move-result-object v0

    .line 234
    :goto_25
    if-nez v0, :cond_2e

    .line 235
    :try_start_27
    const-string v3, "cxl1"

    const-string v4, "query is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2e
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_42} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_42} :catch_52

    .line 245
    :goto_42
    return-void

    .line 222
    .end local v0    # "_query":Ljava/lang/reflect/Method;
    :catch_43
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 229
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_query":Ljava/lang/reflect/Method;
    :catch_48
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_25

    .line 239
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4d
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_42

    .line 242
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_52
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_42
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .registers 11
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3b

    move-result-object v1

    .line 385
    :goto_7
    const/4 v0, 0x0

    .line 387
    .local v0, "_query":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "query"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_40

    move-result-object v0

    .line 394
    :goto_20
    if-nez v0, :cond_29

    .line 395
    :try_start_22
    const-string v3, "cxl1"

    const-string v4, "query is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_29
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_3a} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_3a} :catch_4a

    .line 405
    :goto_3a
    return-void

    .line 382
    .end local v0    # "_query":Ljava/lang/reflect/Method;
    :catch_3b
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 389
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_query":Ljava/lang/reflect/Method;
    :catch_40
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 399
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_45
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 402
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4a
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a
.end method

.method public rsaTest(Z)V
    .registers 10
    .param p1, "a"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "mm.purchasesdk.Purchase_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_30

    move-result-object v1

    .line 320
    :goto_7
    const/4 v0, 0x0

    .line 322
    .local v0, "_rsaTest":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "rsaTest"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_35

    move-result-object v0

    .line 327
    :goto_16
    const/4 v3, 0x0

    .line 329
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 330
    :try_start_19
    const-string v4, "cxl1"

    const-string v5, "rsaTest is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_20
    sget-object v4, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2f} :catch_3f

    .line 340
    :goto_2f
    return-void

    .line 317
    .end local v0    # "_rsaTest":Ljava/lang/reflect/Method;
    .end local v3    # "out":Ljava/lang/Object;
    :catch_30
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 324
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_rsaTest":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 334
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_3a
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    .line 337
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3f
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2f
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_33

    move-result-object v1

    .line 60
    :goto_7
    const/4 v0, 0x0

    .line 62
    .local v0, "_setAppInfo":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "setAppInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_38

    move-result-object v0

    .line 68
    :goto_1b
    if-nez v0, :cond_24

    .line 69
    :try_start_1d
    const-string v3, "cxl1"

    const-string v4, "setAppInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_24
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_32} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_32} :catch_42

    .line 79
    :goto_32
    return-void

    .line 57
    .end local v0    # "_setAppInfo":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 64
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_setAppInfo":Ljava/lang/reflect/Method;
    :catch_38
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 73
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3d
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 76
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_42
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3f

    move-result-object v1

    .line 417
    :goto_7
    const/4 v0, 0x0

    .line 419
    .local v0, "_setAppInfo":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "setAppInfo"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_44

    move-result-object v0

    .line 425
    :goto_20
    if-nez v0, :cond_29

    .line 426
    :try_start_22
    const-string v3, "cxl1"

    const-string v4, "setAppInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_29
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_3e} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_3e} :catch_4e

    .line 436
    :goto_3e
    return-void

    .line 414
    .end local v0    # "_setAppInfo":Ljava/lang/reflect/Method;
    :catch_3f
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 421
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_setAppInfo":Ljava/lang/reflect/Method;
    :catch_44
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 430
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_49
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3e

    .line 433
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4e
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3e
.end method

.method public setTimeout(II)V
    .registers 10
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3b

    move-result-object v1

    .line 614
    :goto_7
    const/4 v0, 0x0

    .line 616
    .local v0, "_setTimeout":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "setTimeout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_40

    move-result-object v0

    .line 623
    :goto_1b
    if-nez v0, :cond_24

    .line 624
    :try_start_1d
    const-string v3, "cxl1"

    const-string v4, "query is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_24
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_3a} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_3a} :catch_4a

    .line 634
    :goto_3a
    return-void

    .line 611
    .end local v0    # "_setTimeout":Ljava/lang/reflect/Method;
    :catch_3b
    move-exception v2

    .line 612
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 618
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_setTimeout":Ljava/lang/reflect/Method;
    :catch_40
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 628
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_45
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 631
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4a
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a
.end method

.method public unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .registers 11
    .param p1, "a"    # Landroid/content/Context;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 476
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "mm.purchasesdk.Purchase_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3b

    move-result-object v1

    .line 481
    :goto_7
    const/4 v0, 0x0

    .line 483
    .local v0, "_unsubscribe":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "unsubscribe"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lmm/purchasesdk/OnPurchaseListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_40

    move-result-object v0

    .line 490
    :goto_20
    if-nez v0, :cond_29

    .line 491
    :try_start_22
    const-string v3, "cxl1"

    const-string v4, "unsubscribe is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_29
    sget-object v3, Lmm/purchasesdk/Purchase;->mPurchase:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_3a} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_3a} :catch_4a

    .line 501
    :goto_3a
    return-void

    .line 478
    .end local v0    # "_unsubscribe":Ljava/lang/reflect/Method;
    :catch_3b
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 485
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_unsubscribe":Ljava/lang/reflect/Method;
    :catch_40
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 495
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_45
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 498
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4a
    move-exception v2

    .line 499
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a
.end method
