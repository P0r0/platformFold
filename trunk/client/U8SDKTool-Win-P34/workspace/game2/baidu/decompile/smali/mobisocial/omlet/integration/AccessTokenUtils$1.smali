.class final Lmobisocial/omlet/integration/AccessTokenUtils$1;
.super Ljava/lang/Object;
.source "AccessTokenUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/integration/AccessTokenUtils;->renewToken(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$successCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lmobisocial/omlet/integration/AccessTokenUtils$1;->val$successCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onResponse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 41
    const/4 v6, 0x0

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 42
    .local v5, "resultCode":I
    const-string v4, ""

    .line 43
    .local v4, "hint":Ljava/lang/String;
    const-string v6, "com.baidu.gamesdk.ResultCode"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, "ResultCode":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "LOGIN_SUCCESS"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 45
    .local v2, "LOGIN_SUCCESS":I
    const-string v6, "LOGIN_CANCEL"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    .local v0, "LOGIN_CANCEL":I
    const-string v6, "LOGIN_FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    .local v1, "LOGIN_FAIL":I
    if-ne v5, v2, :cond_60

    .line 48
    const-string v4, "Login succeeded"

    .line 49
    iget-object v6, p0, Lmobisocial/omlet/integration/AccessTokenUtils$1;->val$successCallback:Ljava/lang/Runnable;

    if-eqz v6, :cond_5a

    .line 50
    iget-object v6, p0, Lmobisocial/omlet/integration/AccessTokenUtils$1;->val$successCallback:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 59
    :cond_5a
    :goto_5a
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 61
    .end local v0    # "LOGIN_CANCEL":I
    .end local v1    # "LOGIN_FAIL":I
    .end local v2    # "LOGIN_SUCCESS":I
    .end local v3    # "ResultCode":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "hint":Ljava/lang/String;
    .end local v5    # "resultCode":I
    :goto_5f
    return-object v6

    .line 52
    .restart local v0    # "LOGIN_CANCEL":I
    .restart local v1    # "LOGIN_FAIL":I
    .restart local v2    # "LOGIN_SUCCESS":I
    .restart local v3    # "ResultCode":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "hint":Ljava/lang/String;
    .restart local v5    # "resultCode":I
    :cond_60
    if-ne v5, v0, :cond_65

    .line 53
    const-string v4, "Login canceled"

    goto :goto_5a

    .line 54
    :cond_65
    if-ne v5, v1, :cond_6a

    .line 55
    const-string v4, "Login failed"

    goto :goto_5a

    .line 57
    :cond_6a
    const-string v4, "something wrong"

    goto :goto_5a

    .line 61
    .end local v0    # "LOGIN_CANCEL":I
    .end local v1    # "LOGIN_FAIL":I
    .end local v2    # "LOGIN_SUCCESS":I
    .end local v3    # "ResultCode":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "hint":Ljava/lang/String;
    .end local v5    # "resultCode":I
    :cond_6d
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5f
.end method
