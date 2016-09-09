.class public Lcom/baidu/sapi2/SapiAccount;
.super Ljava/lang/Object;
.source "SapiAccount.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Ljava/lang/String; = "account_type"

.field static final b:Ljava/lang/String; = "is_social_account"

.field static final c:Ljava/lang/String; = "social_type"

.field static final d:Ljava/lang/String; = "social_portrait"

.field static final e:Ljava/lang/String; = "uid"

.field static final f:Ljava/lang/String; = "displayname"

.field static final g:Ljava/lang/String; = "username"

.field static final h:Ljava/lang/String; = "email"

.field static final i:Ljava/lang/String; = "phone"

.field static final j:Ljava/lang/String; = "bduss"

.field static final k:Ljava/lang/String; = "app"

.field static final l:Ljava/lang/String; = "ptoken"

.field static final m:Ljava/lang/String; = "stoken"

.field static final n:Ljava/lang/String; = "extra"


# instance fields
.field public app:Ljava/lang/String;

.field public bduss:Ljava/lang/String;

.field public displayname:Ljava/lang/String;

.field public email:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public extra:Ljava/lang/String;

.field private o:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public phone:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ptoken:Ljava/lang/String;

.field public stoken:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/baidu/sapi2/SapiAccount$1;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$1;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->p:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->o:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 211
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :cond_d
    return-object v1

    .line 214
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 217
    :try_start_1a
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/SapiAccount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 218
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v0, :cond_27

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_27} :catch_2a

    .line 215
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 221
    :catch_2a
    move-exception v2

    .line 222
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;
    .registers 3
    .param p0, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    if-nez p0, :cond_4

    .line 187
    const/4 v0, 0x0

    .line 200
    :goto_3
    return-object v0

    .line 189
    :cond_4
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 190
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 191
    const-string v1, "displayname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 192
    const-string v1, "username"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 193
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 194
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    .line 195
    const-string v1, "bduss"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 196
    const-string v1, "app"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 197
    const-string v1, "ptoken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 198
    const-string v1, "stoken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 199
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    goto :goto_3
.end method

.method public static toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    if-nez p0, :cond_4

    .line 166
    const/4 v1, 0x0

    .line 175
    :cond_3
    return-object v1

    .line 168
    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 169
    .local v1, "arr":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 170
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccount;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 171
    .local v3, "obj":Lorg/json/JSONObject;
    if-eqz v3, :cond_d

    .line 172
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d
.end method


# virtual methods
.method a(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 449
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 451
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_12} :catch_14

    move-result p2

    .line 457
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local p2    # "defaultValue":I
    :cond_13
    :goto_13
    return p2

    .line 453
    .restart local p2    # "defaultValue":I
    :catch_14
    move-exception v0

    .line 454
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 431
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_12} :catch_14

    move-result-object p2

    .line 437
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object p2

    .line 433
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_14
    move-exception v0

    .line 434
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V
    .registers 5
    .param p1, "socialType"    # Lcom/baidu/sapi2/utils/enums/SocialType;
    .param p2, "socialPortrait"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string v0, "is_social_account"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const-string v0, "social_type"

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string v0, "social_portrait"

    invoke-virtual {p0, v0, p2}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p2, :cond_9

    .line 487
    :cond_8
    :goto_8
    return-void

    .line 470
    :cond_9
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 472
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 475
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_20
    move-exception v0

    .line 476
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 480
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_25
    :try_start_25
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v1    # "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_35} :catch_36

    goto :goto_8

    .line 483
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_36
    move-exception v0

    .line 484
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method a(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 409
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 411
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_12} :catch_14

    move-result p2

    .line 417
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local p2    # "defaultValue":Z
    :cond_13
    :goto_13
    return p2

    .line 413
    .restart local p2    # "defaultValue":Z
    :catch_14
    move-exception v0

    .line 414
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 269
    .local v0, "clone":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 279
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    if-ne p0, p1, :cond_5

    .line 310
    :cond_4
    :goto_4
    return v1

    .line 306
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 308
    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 310
    .local v0, "that":Lcom/baidu/sapi2/SapiAccount;
    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    if-nez v3, :cond_24

    goto :goto_4
.end method

.method public getAccountType()Lcom/baidu/sapi2/utils/enums/AccountType;
    .registers 3

    .prologue
    .line 252
    const-string v0, "account_type"

    sget-object v1, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/AccountType;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/enums/AccountType;->getAccountType(I)Lcom/baidu/sapi2/utils/enums/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getReloginCredentials()Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .registers 4

    .prologue
    .line 342
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    .line 343
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    move-result-object v1

    return-object v1
.end method

.method public getSocialPortrait()Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    const-string v0, "social_portrait"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialType()Lcom/baidu/sapi2/utils/enums/SocialType;
    .registers 3

    .prologue
    .line 243
    const-string v0, "social_type"

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSocialAccount()Z
    .registers 3

    .prologue
    .line 234
    const-string v0, "is_social_account"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "uid"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "displayname"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "username"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "email"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "phone"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "bduss"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "app"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v2, "ptoken"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v2, "stoken"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v2, "extra"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4b} :catch_4c

    .line 153
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_4b
    return-object v1

    .line 151
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_4c
    move-exception v0

    .line 152
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 153
    const/4 v1, 0x0

    goto :goto_4b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SapiAccount{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bduss=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ptoken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stoken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return-void
.end method
