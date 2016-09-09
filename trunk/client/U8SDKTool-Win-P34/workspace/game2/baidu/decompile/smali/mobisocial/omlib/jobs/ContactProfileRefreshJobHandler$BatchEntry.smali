.class Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;
.super Ljava/lang/Object;
.source "ContactProfileRefreshJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchEntry"
.end annotation


# instance fields
.field public account:J

.field public contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

.field public personalProfile:Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

.field final synthetic this$0:Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;
    .param p2, "account"    # J

    .prologue
    .line 174
    iput-object p1, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->this$0:Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-wide p2, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->account:J

    .line 176
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;JLmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;
    .param p2, "account"    # J
    .param p4, "response"    # Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    .prologue
    .line 178
    iput-object p1, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->this$0:Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-wide p2, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->account:J

    .line 180
    iput-object p4, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->contactProfile:Lmobisocial/longdan/LDProtocols$LDGetOmletContactProfileResponse;

    .line 181
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;JLmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;
    .param p2, "account"    # J
    .param p4, "response"    # Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    .prologue
    .line 183
    iput-object p1, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->this$0:Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-wide p2, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->account:J

    .line 185
    iput-object p4, p0, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler$BatchEntry;->personalProfile:Lmobisocial/longdan/LDProtocols$LDGetProfileDetailsResponse;

    .line 186
    return-void
.end method
