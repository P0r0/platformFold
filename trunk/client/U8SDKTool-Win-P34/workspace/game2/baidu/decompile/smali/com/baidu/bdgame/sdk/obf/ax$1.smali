.class final Lcom/baidu/bdgame/sdk/obf/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ax;
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
        "Lcom/baidu/bdgame/sdk/obf/ax;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ax;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ax;-><init>()V

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->c(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->f(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->g(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7d

    move v0, v1

    :goto_31
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Z)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7f

    move v0, v1

    :goto_3b
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Z)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_81

    move v0, v1

    :goto_45
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->c(Z)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_83

    :goto_4e
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->i(Ljava/lang/String;)V

    .line 260
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/ax;->h(Ljava/lang/String;)V

    .line 265
    return-object v3

    :cond_7d
    move v0, v2

    .line 255
    goto :goto_31

    :cond_7f
    move v0, v2

    .line 256
    goto :goto_3b

    :cond_81
    move v0, v2

    .line 257
    goto :goto_45

    :cond_83
    move v1, v2

    .line 258
    goto :goto_4e
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/ax;
    .registers 3

    .prologue
    .line 269
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/ax;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ax$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ax$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    return-object v0
.end method
