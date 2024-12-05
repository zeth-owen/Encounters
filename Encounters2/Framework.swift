//
//  Framework.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/4/24.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String?
    let description: String?
}



struct MockData {
    static let aboutUsFramework =
        Framework (name: "About Us",
                   imageName: "About us",
                   urlString: nil,
                   description: "At Encounters Counseling and Recovery, we are dedicated to providing compassionate and effective faith-based counseling and intensive outpatient programs. Our mission is to support adults, couples, and families facing challenges related to trauma and addiction. We believe in the power of healing and recovery through a holistic approach that integrates faith and therapy. \n\nWe are committed to walking alongside you on your path to recovery and healing. Our caring team is here to help you find hope and restoration in every aspect of your life.")
    
    static let missionFramework =
        Framework (name: "Mission Statement",
                   imageName: "Youversion Bible Image",
                   urlString: nil,
                   description: "Encounters Counseling and Recovery LLC was founded by Stephanie Partida, LCSW, LCADC, from a heart of service. Our intention is that everyone who walks through our doors will have an encounter, find peace, happiness, and fulfillment, and become whole again. We understand that we can do nothing outside of Jesus. As it is written, “Apart from me you can do nothing” (John 15:5). We invite you to join us on your life’s journey; you are not alone. We aim to meet you where you are and support you in obtaining victory in your life \n*Statement of Faith:* \nAre you struggling with your faith? Do you feel like you don’t belong in church or anywhere? Encounters is a counseling agency for people who have been there—those in that deep, dark pit who cannot find their way out. We welcome your doubts and questions, and we don’t expect you to wear a fake smile. At Encounters, no one is perfect, and we always have room for more. \nWe provide non-denominational Christian counseling with therapists specializing in both mental health and substance use disorders. Our services include state-certified domestic violence and anger management programs, as well as a Mental Health Intensive Outpatient Program. \nGod does not have a single prescribed way to worship Him. While some traditional practices have developed over time, they are not necessarily the only or best way to connect with God. We seek new, meaningful ways to worship that are relevant today, which is where the Life Altering Skills come in.\nWe want everyone who comes to Encounters Counseling and Recovery to experience the faithful love and mercy of Jesus, but we will settle for an encounter with yourself. Here, you will learn what it means to be Forgiven: forgiveness and eternal life are available to all who accept God’s grace through Jesus Christ. It is not God who rejects us, but we who reject God.\n*Salvation:*\n  A gift from God received through faith in Jesus Christ. When we trust in Jesus and confess our sins to Him, we are forgiven and made right with God. We guide all our clients toward an experience with Jesus where they will not be able to tell where they end and where the Holy Spirit begins. We were all created to have relationships; we did not get sick by ourselves, and we do not heal by ourselves. We heal in community.\n*YOU ARE NOT ALONE!*")
    

    static let modalitiesFramework =
    Framework(name: "Modalities",
              imageName: "modalities",
              urlString: nil,
              description: "Explore our various treatment modalities designed to support your recovery journey.")
    
    static let loginFramework =
    Framework(name: "EHR Login",
              imageName: "EHR login",
              urlString: "https://clientportal.us.powerdiary.com/clientportal/encounterscounselingandrecovery",
              description: nil)
    
    static let officeLocationFramework =
    Framework(name: "Office Location",
              imageName: "map",
              urlString: nil,
              description: nil)
    
    static let contactUsFramework =
    Framework(name: "Contact Us",
              imageName: "Contacet Us-TO",
              urlString: nil,
              description: "Call 📞 (702) 742-1500 for any questions. \n\n*We are here to help!*")
    
    
    
}


struct Modality:  Hashable, Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var commonApplications: [String]
}

struct PreviewData {
    
    static let sampleModality =
        Modality(name: "Cognitive Behavioral Therapy (CBT)",
        imageName: "light-bulb",
        description: "Cognitive Behavioral Therapy (CBT) is a structured, goal-oriented psychotherapy that helps individuals identify and modify negative thought patterns and behaviors. It focuses on the relationship between thoughts, feelings, and behaviors to improve emotional regulation and develop healthier coping mechanisms.",
        commonApplications: [
            "Depression",
            "Anxiety disorders",
            "Stress management",
            "Phobias",
            "Obsessive-Compulsive Disorder (OCD)"
        ]
    )
    
    static let modalities = [
        Modality(
            name: "Cognitive Behavioral Therapy (CBT)",
            imageName: "light-bulb",  
            description: "Cognitive Behavioral Therapy (CBT) is a structured, goal-oriented psychotherapy that helps individuals identify and modify negative thought patterns and behaviors. It focuses on the relationship between thoughts, feelings, and behaviors to improve emotional regulation and develop healthier coping mechanisms.",
            commonApplications: [
                "Depression",
                "Anxiety disorders",
                "Stress management",
                "Phobias",
                "Obsessive-Compulsive Disorder (OCD)"
            ]
        ),
        Modality(
            name: "Dialectical Behavior Therapy (DBT)",
            imageName: "lotus",
            description: "Dialectical Behavior Therapy (DBT) is a form of cognitive-behavioral therapy that focuses on teaching clients skills to manage intense emotions, improve relationships, and tolerate distress. It combines individual therapy with group skills training and emphasizes mindfulness.",
            commonApplications: [
                "Borderline Personality Disorder (BPD)",
                "Self-harm behaviors",
                "Emotional regulation",
                "Suicidal ideation",
                "Addiction recovery"
            ]
        ),
        Modality(
            name: "Emotionally Focused Therapy (EFT)",
            imageName: "heart",
            description: "Emotionally Focused Therapy (EFT) is a therapeutic approach that helps individuals and couples recognize and manage their emotions in order to build healthier, more secure relationships. EFT fosters emotional bonding and attachment through structured therapeutic interventions.",
            commonApplications: [
                "Couples therapy",
                "Attachment issues",
                "Relationship distress",
                "Depression",
                "Trauma recovery"
            ]
        ),
        Modality(
            name: "Eye Movement Desensitization (EMDR)",
            imageName: "eye",
            description: "Eye Movement Desensitization and Reprocessing (EMDR) is a psychotherapy approach designed to alleviate the distress associated with traumatic memories. It involves processing memories through bilateral stimulation (typically eye movements) to reduce their emotional charge and integrate them into adaptive networks.",
            commonApplications: [
                "Post-Traumatic Stress Disorder (PTSD)",
                "Trauma recovery",
                "Anxiety",
                "Phobias",
                "Grief"
            ]
        ),
        Modality(
            name: "Brainspotting Therapy (BSP)",
            imageName: "brain",
            description: "Brainspotting (BSP) is a neurobiological approach to trauma therapy that focuses on identifying and processing unprocessed trauma held in the body and brain. It is designed to access deeper brain regions involved in emotional processing through the therapist's guidance of eye positioning.",
            commonApplications: [
                "Trauma recovery",
                "Chronic pain",
                "Emotional dysregulation",
                "Anxiety",
                "Depression"
            ]
        ),
        Modality(
            name: "Parts and Memory Thearapy",
            imageName: "jigsaw",
            description: "Parts and Memory therapy, also known as Parts Work, is based on the idea that individuals consist of various 'parts' or aspects of themselves, each holding memories, emotions, and beliefs. It helps clients address internal conflicts and integrate fragmented parts of the self into a cohesive whole.",
            commonApplications: [
                "Inner child work",
                "Trauma healing",
                "Self-compassion",
                "Addiction recovery",
                "Anxiety"
            ]
        ),
        Modality(
            name: "Equine-Assisted Therapy",
            imageName: "horse",
            description: "Equine Therapy is a therapeutic approach that involves interaction with horses to facilitate emotional growth and healing. It utilizes the horse's natural instincts and behavior to help individuals develop trust, improve emotional regulation, and build healthier relationships.",
            commonApplications: [
                "Trauma recovery",
                "Addiction recovery",
                "Autism spectrum disorders",
                "Anxiety and depression",
                "Behavioral disorders"
            ]
        )
    ]
}



