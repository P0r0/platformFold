.class Lcom/vivo/upgrade/net/NetConnectTask$Response;
.super Ljava/lang/Object;
.source "NetConnectTask.java"

# interfaces
.implements Lcom/vivo/upgrade/net/NetConnectResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/upgrade/net/NetConnectTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/net/NetConnectTask;


# direct methods
.method private constructor <init>(Lcom/vivo/upgrade/net/NetConnectTask;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/upgrade/net/NetConnectTask;Lcom/vivo/upgrade/net/NetConnectTask$Response;)V
    .registers 3

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/net/NetConnectTask$Response;-><init>(Lcom/vivo/upgrade/net/NetConnectTask;)V

    return-void
.end method


# virtual methods
.method public response(Lcom/vivo/upgrade/net/NetConnectClient;IILjava/lang/String;)V
    .registers 8
    .param p1, "connect"    # Lcom/vivo/upgrade/net/NetConnectClient;
    .param p2, "connStatus"    # I
    .param p3, "httpCode"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/vivo/upgrade/net/NetConnectClient;->disconnect()V

    .line 253
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    invoke-static {v0, p4}, Lcom/vivo/upgrade/net/NetConnectTask;->access$2(Lcom/vivo/upgrade/net/NetConnectTask;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    invoke-static {v0, p2}, Lcom/vivo/upgrade/net/NetConnectTask;->access$3(Lcom/vivo/upgrade/net/NetConnectTask;I)V

    .line 255
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    invoke-static {v0, p3}, Lcom/vivo/upgrade/net/NetConnectTask;->access$4(Lcom/vivo/upgrade/net/NetConnectTask;I)V

    .line 256
    const-string v0, "Upgrade.NetConnectTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " httpCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    # getter for: Lcom/vivo/upgrade/net/NetConnectTask;->mParser:Lcom/vivo/upgrade/net/ParserFactory;
    invoke-static {v0}, Lcom/vivo/upgrade/net/NetConnectTask;->access$5(Lcom/vivo/upgrade/net/NetConnectTask;)Lcom/vivo/upgrade/net/ParserFactory;

    move-result-object v0

    if-eqz v0, :cond_5b

    const/16 v0, 0x12c

    if-ne p2, v0, :cond_5b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 259
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask$Response;->this$0:Lcom/vivo/upgrade/net/NetConnectTask;

    # getter for: Lcom/vivo/upgrade/net/NetConnectTask;->mParser:Lcom/vivo/upgrade/net/ParserFactory;
    invoke-static {v1}, Lcom/vivo/upgrade/net/NetConnectTask;->access$5(Lcom/vivo/upgrade/net/NetConnectTask;)Lcom/vivo/upgrade/net/ParserFactory;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/vivo/upgrade/net/ParserFactory;->parseData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/net/NetConnectTask;->access$6(Lcom/vivo/upgrade/net/NetConnectTask;Ljava/lang/Object;)V

    .line 261
    :cond_5b
    return-void
.end method
