.class public Lcom/vivo/sdkplugin/adapter/SubAccount;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vivo/sdkplugin/adapter/g;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/adapter/g;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/adapter/SubAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->m:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->i:Z

    iput-object p8, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    iput-object p7, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/adapter/SubAccount;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIsNew()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMlastlogintime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMnickname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMopenid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMsubid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMtoken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSublevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSubrole()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getmShowAddButton()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->i:Z

    return v0
.end method

.method public isFootView()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->m:Z

    return v0
.end method

.method public isIslastlogin()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->d:Z

    return v0
.end method

.method public isMsgSelectedFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->j:Z

    return v0
.end method

.method public setFootView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->m:Z

    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->g:Ljava/lang/String;

    return-void
.end method

.method public setIslastlogin(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->d:Z

    return-void
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    return-void
.end method

.method public setMlastlogintime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    return-void
.end method

.method public setMnickname(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    return-void
.end method

.method public setMopenid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    return-void
.end method

.method public setMsgSelectedFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->j:Z

    return-void
.end method

.method public setMsubid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    return-void
.end method

.method public setMtoken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    return-void
.end method

.method public setSublevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    return-void
.end method

.method public setSubrole(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    return-void
.end method

.method public setmShowAddButton(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->i:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mnickname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mopenid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " msubid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " subrole:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " sublevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mtoken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/SubAccount;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
