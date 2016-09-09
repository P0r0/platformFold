.class public Lcom/baidu/bdgame/sdk/obf/fy;
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
            "Lcom/baidu/bdgame/sdk/obf/fy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fy$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/fy$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/fy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/fy$1;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;I)I
    .registers 2

    .prologue
    .line 13
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    return p1
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/fy;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/fy;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->b(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->b(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(I)V

    .line 35
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 62
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fy;Z)Z
    .registers 2

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fy;Z)Z
    .registers 2

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->e:Z

    .line 102
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x2

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->f:Z

    .line 110
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    if-ne v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fy;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fy;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_7
    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->e:Z

    goto :goto_7
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->e:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->f:Z

    if-eqz v0, :cond_28

    :goto_1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void

    :cond_26
    move v0, v2

    .line 121
    goto :goto_16

    :cond_28
    move v1, v2

    .line 122
    goto :goto_1d
.end method
