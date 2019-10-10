.class public abstract Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.super Lcom/xiaomi/passport/uicontroller/UIControllerFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginUICallback;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;,
        Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/UIControllerFuture<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/UIControllerFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/k;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_b2

    .line 46
    iget v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->w:I

    packed-switch v0, :pswitch_data_ba

    .line 94
    :pswitch_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "this should not be happen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :pswitch_f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_1b

    .line 89
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 91
    :cond_1b
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Service side fatal error"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :pswitch_23
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/k;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/a/k;-><init>()V

    throw p1

    .line 84
    :pswitch_29
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "time or network error"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :pswitch_31
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/e;

    const-string v0, "device id should not be null"

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/account/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :pswitch_39
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/l;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/a/l;-><init>()V

    throw p1

    .line 72
    :pswitch_3f
    new-instance v0, Lcom/xiaomi/accountsdk/request/a;

    const/16 v1, 0x193

    const-string v2, "access denied"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/request/a;-><init>(ILjava/lang/String;)V

    .line 73
    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    if-eqz v1, :cond_51

    .line 74
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/a;->a(Ljava/lang/String;)V

    .line 76
    :cond_51
    throw v0

    .line 78
    :pswitch_52
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "server error"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    .line 79
    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    if-eqz v1, :cond_62

    .line 80
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/k;->a(Ljava/lang/String;)V

    .line 82
    :cond_62
    throw v0

    .line 56
    :pswitch_63
    iget-boolean v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    if-eqz v0, :cond_75

    .line 58
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/r;

    const/4 v1, 0x0

    const-string v2, "http exception"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/r;-><init>(ILjava/lang/String;)V

    .line 59
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/a/r;->a(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 62
    :cond_75
    new-instance p1, Ljava/io/IOException;

    const-string v0, "network error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :pswitch_7d
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/g;

    iget-boolean v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->x:Z

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(Z)V

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->u:Lcom/xiaomi/accountsdk/account/data/h;

    .line 65
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/a/g;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->s:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/a/g;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object p1

    throw p1

    .line 50
    :pswitch_91
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/o;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->t:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_9b
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/q;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->u:Lcom/xiaomi/accountsdk/account/data/h;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->v:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/accountsdk/account/a/q;-><init>(Lcom/xiaomi/accountsdk/account/data/h;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_a7
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/n;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->s:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_af
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->r:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object p1

    .line 44
    :cond_b2
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result is null"

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a7
        :pswitch_9b
        :pswitch_91
        :pswitch_7d
        :pswitch_63
        :pswitch_52
        :pswitch_3f
        :pswitch_39
        :pswitch_31
        :pswitch_29
        :pswitch_23
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public a(Ljava/util/concurrent/ExecutionException;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/k;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/e;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 112
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/o;

    if-nez v0, :cond_77

    .line 114
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/q;

    if-nez v0, :cond_74

    .line 116
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/k;

    if-nez v0, :cond_71

    .line 118
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_6e

    .line 120
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/g;

    if-nez v0, :cond_6b

    .line 122
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/n;

    if-nez v0, :cond_68

    .line 124
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/l;

    if-nez v0, :cond_65

    .line 126
    instance-of v0, p1, Lcom/xiaomi/accountsdk/request/a;

    if-nez v0, :cond_62

    .line 128
    instance-of v0, p1, Lcom/xiaomi/accountsdk/request/k;

    if-nez v0, :cond_5f

    .line 130
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_5c

    .line 132
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/e;

    if-nez v0, :cond_59

    .line 134
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_56

    .line 136
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_3b

    .line 137
    check-cast p1, Landroid/os/RemoteException;

    throw p1

    .line 139
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown exception met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_56
    check-cast p1, Ljava/lang/IllegalStateException;

    throw p1

    .line 133
    :cond_59
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/e;

    throw p1

    .line 131
    :cond_5c
    check-cast p1, Ljavax/net/ssl/SSLException;

    throw p1

    .line 129
    :cond_5f
    check-cast p1, Lcom/xiaomi/accountsdk/request/k;

    throw p1

    .line 127
    :cond_62
    check-cast p1, Lcom/xiaomi/accountsdk/request/a;

    throw p1

    .line 125
    :cond_65
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/l;

    throw p1

    .line 123
    :cond_68
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/n;

    throw p1

    .line 121
    :cond_6b
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/g;

    throw p1

    .line 119
    :cond_6e
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 117
    :cond_71
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/k;

    throw p1

    .line 115
    :cond_74
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/q;

    throw p1

    .line 113
    :cond_77
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/o;

    throw p1
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method
