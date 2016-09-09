.class final Lcom/baidu/bdgame/sdk/obf/ba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ba;
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
        "Lcom/baidu/bdgame/sdk/obf/ba;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ba;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba;->a(Lcom/baidu/bdgame/sdk/obf/ba;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba;->b(Lcom/baidu/bdgame/sdk/obf/ba;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 3

    .prologue
    .line 46
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/ba;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ba$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/ba;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ba$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/ba;

    move-result-object v0

    return-object v0
.end method
