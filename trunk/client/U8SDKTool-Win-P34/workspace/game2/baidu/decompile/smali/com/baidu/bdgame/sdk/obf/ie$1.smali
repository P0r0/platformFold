.class final Lcom/baidu/bdgame/sdk/obf/ie$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ie;
    .registers 4

    .prologue
    .line 153
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ie;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ie;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->a(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->b(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->c(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->d(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->e(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->f(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->g(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->h(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ie;->i(Lcom/baidu/bdgame/sdk/obf/ie;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/ie;
    .registers 3

    .prologue
    .line 148
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/ie;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ie$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ie$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/ie;

    move-result-object v0

    return-object v0
.end method
