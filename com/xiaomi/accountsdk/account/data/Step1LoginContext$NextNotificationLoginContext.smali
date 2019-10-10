.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextNotificationLoginContext"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    return-object v0
.end method
