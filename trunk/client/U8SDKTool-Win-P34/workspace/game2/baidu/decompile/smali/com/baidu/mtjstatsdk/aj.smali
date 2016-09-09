.class public Lcom/baidu/mtjstatsdk/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/baidu/bplus/IBPStretegyController;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/baidu/bplus/IBPStretegyController;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 26
    const-string v0, "BPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config sdk bplus service is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/mtjstatsdk/n;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sdk product ly is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/ak;->a(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-eqz v0, :cond_38

    .line 31
    const-string v0, "BPlus"

    const-string v1, "========="

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 62
    :goto_37
    return-object v0

    .line 36
    :cond_38
    :try_start_38
    const-string v0, "com.baidu.bplus.remote.BPStretegyController"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ak;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    if-nez v0, :cond_47

    .line 39
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    sput-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 40
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    goto :goto_37

    .line 42
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bplus/IBPStretegyController;

    sput-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_4f} :catch_5a
    .catch Ljava/lang/InstantiationException; {:try_start_38 .. :try_end_4f} :catch_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_4f} :catch_6e

    .line 57
    :goto_4f
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-nez v0, :cond_78

    .line 58
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    sput-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 59
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    goto :goto_37

    .line 43
    :catch_5a
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 45
    sput-object v3, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 46
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 47
    :catch_64
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 49
    sput-object v3, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 50
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 51
    :catch_6e
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 53
    sput-object v3, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 54
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 61
    :cond_78
    const-string v0, "BPlus"

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    goto :goto_37
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    const-string v1, "SDK_BPLUS_SERVICE"

    .line 140
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-nez v0, :cond_7

    .line 163
    :goto_6
    return-object v1

    .line 144
    :cond_7
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 146
    :try_start_d
    const-string v2, "getIntentBPlusServiceKey"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_20} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_20} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_20} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_20} :catch_34

    :goto_20
    move-object v1, v0

    .line 163
    goto :goto_6

    .line 149
    :catch_22
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    .line 161
    goto :goto_20

    .line 152
    :catch_28
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 161
    goto :goto_20

    .line 155
    :catch_2e
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 161
    goto :goto_20

    .line 158
    :catch_34
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 114
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-nez v0, :cond_5

    .line 135
    :goto_4
    return-void

    .line 118
    :cond_5
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 120
    :try_start_b
    const-string v1, "setProductLv"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_23} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_23} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_23} :catch_33

    goto :goto_4

    .line 122
    :catch_24
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 125
    :catch_29
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 128
    :catch_2e
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 131
    :catch_33
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4
.end method

.method public static a(Z)V
    .registers 6

    .prologue
    .line 90
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-nez v0, :cond_5

    .line 111
    :goto_4
    return-void

    .line 94
    :cond_5
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    :try_start_b
    const-string v1, "setBPlusService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_27} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_27} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_27} :catch_37

    goto :goto_4

    .line 98
    :catch_28
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 101
    :catch_2d
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 104
    :catch_32
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 107
    :catch_37
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    const-string v1, "SDK_PRODUCT_LY"

    .line 169
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    if-nez v0, :cond_7

    .line 192
    :goto_6
    return-object v1

    .line 173
    :cond_7
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    :try_start_d
    const-string v2, "getIntentProductLyKey"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_20} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_20} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_20} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_20} :catch_34

    :goto_20
    move-object v1, v0

    .line 192
    goto :goto_6

    .line 178
    :catch_22
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    .line 190
    goto :goto_20

    .line 181
    :catch_28
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 190
    goto :goto_20

    .line 184
    :catch_2e
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 190
    goto :goto_20

    .line 187
    :catch_34
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_20
.end method
