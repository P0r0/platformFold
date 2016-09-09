.class public Lcom/baidu/sapi2/dto/ReloginDTO;
.super Lcom/baidu/sapi2/dto/SapiDTO;
.source "ReloginDTO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

.field public bduss:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-static {}, Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;->getDefault()Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/dto/ReloginDTO;-><init>(Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;)V
    .registers 2
    .param p1, "passwordType"    # Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/sapi2/dto/SapiDTO;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/baidu/sapi2/dto/ReloginDTO;->a:Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    .line 28
    return-void
.end method


# virtual methods
.method public getPasswordType()Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/sapi2/dto/ReloginDTO;->a:Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/sapi2/dto/ReloginDTO;->a:Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;->getDefault()Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    move-result-object v0

    goto :goto_6
.end method
