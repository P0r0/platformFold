.class Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;
.super Ljava/lang/Object;
.source "ConfigHelper.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/util/ConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainingProvider"
.end annotation


# instance fields
.field private final first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

.field private final second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;)V
    .registers 3
    .param p1, "first"    # Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    .param p2, "second"    # Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    .line 85
    iput-object p2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    .line 86
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "v":Ljava/lang/Boolean;
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    if-eqz v2, :cond_b

    .line 105
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    invoke-interface {v2, p1}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 106
    :cond_b
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    if-eqz v2, :cond_18

    .line 107
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    invoke-interface {v2, p1}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 108
    .local v0, "t":Ljava/lang/Boolean;
    if-eqz v0, :cond_18

    .line 109
    move-object v1, v0

    .line 111
    .end local v0    # "t":Ljava/lang/Boolean;
    :cond_18
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "v":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    if-eqz v2, :cond_b

    .line 92
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->first:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    invoke-interface {v2, p1}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_b
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    if-eqz v2, :cond_18

    .line 94
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;->second:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    invoke-interface {v2, p1}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "t":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 96
    move-object v1, v0

    .line 98
    .end local v0    # "t":Ljava/lang/String;
    :cond_18
    return-object v1
.end method
