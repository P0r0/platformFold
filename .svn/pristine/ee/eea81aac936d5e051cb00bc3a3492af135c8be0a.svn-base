.class public Lcom/baidu/bdgame/sdk/obf/ax;
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
            "Lcom/baidu/bdgame/sdk/obf/ax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/bdgame/sdk/obf/ag;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 246
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ax$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ax$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Z

    .line 32
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Z

    .line 38
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 6

    .prologue
    .line 171
    new-instance v1, Lcom/baidu/platformsdk/BDPlatformUser;

    invoke-direct {v1}, Lcom/baidu/platformsdk/BDPlatformUser;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUid(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 174
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v2

    .line 175
    if-nez v2, :cond_1a

    .line 176
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 178
    :cond_1a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 179
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 181
    :cond_1f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 182
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 184
    :cond_24
    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthAccessToken(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setGuest(Z)V

    .line 187
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    if-eqz v0, :cond_59

    .line 189
    const-string v0, "bdp_account_autologin_guest"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setDisplayName(Ljava/lang/String;)V

    .line 193
    :goto_42
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Z

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setThirdPartyUser(Z)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthUid(Ljava/lang/String;)V

    .line 196
    if-nez v2, :cond_58

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduBDUSS(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduAccountName(Ljava/lang/String;)V

    .line 200
    :cond_58
    return-object v1

    .line 191
    :cond_59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setDisplayName(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Z

    .line 71
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ax;)Z
    .registers 4

    .prologue
    .line 164
    if-nez p1, :cond_4

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ag;)Z

    move-result v0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Z

    .line 102
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    .line 145
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Z

    .line 153
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->c:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public h()Lcom/baidu/bdgame/sdk/obf/ag;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->n:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 207
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->n()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_e
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/md;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 217
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/md;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_18
    return-object v0

    .line 208
    :cond_19
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 209
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 210
    :cond_28
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 211
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 213
    :cond_37
    const-string v0, ""

    goto :goto_e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Z

    if-eqz v0, :cond_54

    move v0, v1

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Z

    if-eqz v0, :cond_56

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Z

    if-eqz v0, :cond_58

    move v0, v1

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Z

    if-eqz v0, :cond_5a

    :goto_37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return-void

    :cond_54
    move v0, v2

    .line 235
    goto :goto_20

    :cond_56
    move v0, v2

    .line 236
    goto :goto_28

    :cond_58
    move v0, v2

    .line 237
    goto :goto_30

    :cond_5a
    move v1, v2

    .line 238
    goto :goto_37
.end method
