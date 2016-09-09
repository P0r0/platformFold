.class public Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vivo/sdkplugin/adapter/b;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/adapter/b;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMtoken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getlink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getmShowAddButton()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->i:Z

    return v0
.end method

.method public getname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getopenType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getserialNum()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isMsgSelectedFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->j:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->g:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->h:Ljava/lang/String;

    return-void
.end method

.method public setMlastlogintime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    return-void
.end method

.method public setMsgSelectedFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->j:Z

    return-void
.end method

.method public setMtoken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->f:Ljava/lang/String;

    return-void
.end method

.method public setlink(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    return-void
.end method

.method public setmShowAddButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->i:Z

    return-void
.end method

.method public setname(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    return-void
.end method

.method public setopenType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
