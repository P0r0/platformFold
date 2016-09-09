.class public Lcom/vivo/upgrade/net/ConnectTask;
.super Lcom/vivo/upgrade/net/NetConnectTask;
.source "ConnectTask.java"

# interfaces
.implements Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;
    }
.end annotation


# instance fields
.field private mNetCheckListener:Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;Lcom/vivo/upgrade/net/ParserFactory;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;
    .param p3, "parser"    # Lcom/vivo/upgrade/net/ParserFactory;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;",
            "Lcom/vivo/upgrade/net/ParserFactory;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/vivo/upgrade/net/NetConnectTask;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;Lcom/vivo/upgrade/net/ParserFactory;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/vivo/upgrade/net/NetConnectTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "connectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/upgrade/net/NetConnectTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 5

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Lcom/vivo/upgrade/net/ConnectTask;->setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V

    .line 48
    invoke-super {p0}, Lcom/vivo/upgrade/net/NetConnectTask;->connect()V

    .line 50
    iget-object v0, p0, Lcom/vivo/upgrade/net/ConnectTask;->mNetCheckListener:Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;

    if-eqz v0, :cond_1b

    .line 51
    iget-object v0, p0, Lcom/vivo/upgrade/net/ConnectTask;->mNetCheckListener:Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;

    invoke-virtual {p0}, Lcom/vivo/upgrade/net/ConnectTask;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/upgrade/net/ConnectTask;->getConnectStatus()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/upgrade/net/ConnectTask;->getHttpCode()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;->onResponse(Ljava/lang/String;II)V

    .line 53
    :cond_1b
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 41
    invoke-virtual {p0, p0}, Lcom/vivo/upgrade/net/ConnectTask;->setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V

    .line 42
    invoke-super {p0, p1}, Lcom/vivo/upgrade/net/NetConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onAppendRequestInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/vivo/upgrade/utils/Util;->appendGreneralInfomation(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vivo/upgrade/net/NetConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    .line 36
    return-void
.end method

.method public setNetCheckResponse(Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vivo/upgrade/net/ConnectTask;->mNetCheckListener:Lcom/vivo/upgrade/net/ConnectTask$NetCheckResponseListener;

    .line 30
    return-void
.end method
