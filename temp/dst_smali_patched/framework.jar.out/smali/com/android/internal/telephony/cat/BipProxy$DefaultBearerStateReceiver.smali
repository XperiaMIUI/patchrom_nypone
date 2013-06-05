.class Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBearerStateReceiver"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFilter:Landroid/content/IntentFilter;

.field mIsRegistered:Z

.field mOngoingSetupMessage:Landroid/os/Message;

.field final mSetupMessageLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    return-void
.end method

.method private onConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "onConnected"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    .local v0, info:[Ljava/lang/String;
    invoke-static {v1, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #info:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "onDisconnected"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const-string v3, "Default bearer failed to connect"

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .local v0, csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    invoke-static {v1, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onStillConnecting()V
    .locals 1

    .prologue
    const-string v0, "onStillConnecting"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): Intent is :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, noConnection:Z
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, netInfo:Landroid/net/NetworkInfo;
    const-string v3, "otherNetwork"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, otherNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const-string v3, "BIP network state : CONNECTIVITY_ACTION disconnected "

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onConnected()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onStillConnecting()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onDisconnected()V

    goto :goto_0
.end method

.method public setOngoingSetupMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method
