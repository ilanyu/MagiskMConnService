.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;
.super Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

.field final synthetic b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    .line 132
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->b(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    .line 133
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    .line 134
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    .line 135
    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->c()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method
