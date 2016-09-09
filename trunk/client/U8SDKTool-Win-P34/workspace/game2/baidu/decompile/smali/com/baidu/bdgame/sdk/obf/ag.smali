.class public Lcom/baidu/bdgame/sdk/obf/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ag$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ag$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ag;I)I
    .registers 2

    .prologue
    .line 11
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:I

    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ag;)Z
    .registers 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token {uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    if-nez v0, :cond_38

    const-string v0, ""

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    goto :goto_29
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
