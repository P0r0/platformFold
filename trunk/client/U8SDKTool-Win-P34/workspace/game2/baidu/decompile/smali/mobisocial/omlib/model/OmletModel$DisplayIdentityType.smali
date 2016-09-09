.class public enum Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;
.super Ljava/lang/Enum;
.source "OmletModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/model/OmletModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "DisplayIdentityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

.field public static final enum ExplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

.field public static final enum ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

.field public static final enum ImplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

.field public static final enum ImplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

.field public static final enum NotSet:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$1;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v2, v2}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->NotSet:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    .line 24
    new-instance v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$2;

    const-string v1, "ImplicitHide"

    invoke-direct {v0, v1, v3, v3}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ImplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    .line 26
    new-instance v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$3;

    const-string v1, "ExplicitHide"

    invoke-direct {v0, v1, v4, v4}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    .line 28
    new-instance v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$4;

    const-string v1, "ImplicitShow"

    invoke-direct {v0, v1, v5, v5}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ImplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    .line 30
    new-instance v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$5;

    const-string v1, "ExplicitShow"

    invoke-direct {v0, v1, v6, v6}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->NotSet:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ImplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitHide:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ImplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    aput-object v1, v0, v5

    sget-object v1, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->ExplicitShow:Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    aput-object v1, v0, v6

    sput-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->$VALUES:[Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->val:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILmobisocial/omlib/model/OmletModel$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lmobisocial/omlib/model/OmletModel$1;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->$VALUES:[Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    invoke-virtual {v0}, [Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;->val:I

    return v0
.end method
