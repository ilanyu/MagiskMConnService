.class public Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->a:I

    .line 19
    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->b:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->c:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester$Response;->d:Ljava/util/Map;

    return-void
.end method
