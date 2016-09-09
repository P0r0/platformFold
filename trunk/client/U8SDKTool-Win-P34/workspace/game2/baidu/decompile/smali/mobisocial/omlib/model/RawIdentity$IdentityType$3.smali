.class final enum Lmobisocial/omlib/model/RawIdentity$IdentityType$3;
.super Lmobisocial/omlib/model/RawIdentity$IdentityType;
.source "RawIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/model/RawIdentity$IdentityType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmobisocial/omlib/model/RawIdentity$IdentityType;-><init>(Ljava/lang/String;ILjava/lang/String;Lmobisocial/omlib/model/RawIdentity$1;)V

    return-void
.end method
