.class public Lcom/gionee/gsp/service/GnCommplatformImplForBase$ResultCode;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultCode"
.end annotation


# static fields
.field public static final BACK2LOGIN:I = 0x3f3

.field public static final FINSH_SELF:I = 0x3eb

.field public static final GET_BIINFO_SUCCESS:I = 0x3f1

.field public static final LOGIN_CACEL:I = 0x3f2

.field public static final LOGIN_GIONEE_ACCOUNT:I = 0x3ed

.field public static final LOGIN_SUCCESS:I = 0x3e9

.field public static final LOGIN_VISITOR:I = 0x3ea

.field public static final REGISTER_SUCCESS:I = 0x3ec

.field public static final UPGRADE_AVAILABLE_ACCOUNT_SUCCESS:I = 0x3ee

.field public static final UPGRADE_CANCEL:I = 0x3f0

.field public static final UPGRADE_USING_ACCOUNT_SUCCESS:I = 0x3ef


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V
    .registers 2

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$ResultCode;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
